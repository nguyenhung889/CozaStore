<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Gloudemans\Shoppingcart\Facades\Cart;
use Socialite;
use App\User;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
    // use Auth;
    use AuthenticatesUsers;

    // /**
    //  * Where to redirect users after login.
    //  *
    //  * @var string
    //  */
    // protected $redirectTo = '/home';

    // /**
    //  * Create a new controller instance.
    //  *
    //  * @return void
    //  */
    // public function __construct()
    // {
    //     $this->middleware('guest')->except('logout');
    // }

    public function getLogin(){
        return view('auth.login');
    }

    public function postLogin(Request $request){
        $credentials = $request->only('email', 'password');
        //dd($request->all());
        if(\Auth::attempt($credentials, $request->remember_me == 'on' ? true : false)){
            \Cart::destroy();
            \Toastr::success('Welcome '.\Auth::user()->username, '', ["positionClass" => "toast-top-right"]);
            return redirect()->route('home');
        }
        \Toastr::error('Login failed', '', ["positionClass" => "toast-top-right"]);
        return redirect()->back();
    }

    public function getLogout(Request $request){
        Auth::logout();
        return redirect()->route('home');
    }
    // Login FB
    public function redirectToProvider()
    {
        return Socialite::driver('facebook')->redirect();
    }

    /**
     * Obtain the user information from GitHub.
     *
     * @return \Illuminate\Http\Response
     */
    public function handleProviderCallback()
    {
        $user = Socialite::driver('facebook')->stateless()->user(); 
        $authUser = $this->findOrCreateUser($user);
        Auth::login($authUser);
        return redirect()->route('home');
    }
    private function findOrCreateUser($user){
        $authUser=User::where('facebook_id',$user->id)->first();
        if($authUser){
            \Cart::destroy();
            return $authUser;

        }else{
            return User::create([
                'username' => $user->getName(),
                'email' => $user->getEmail(),
                'password' => md5($user->token),
                'facebook_id' => $user->getId(),
            ]);
        }
    }

    // Login Google
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
        try {
            $user = Socialite::driver('google')->user();
        } catch (\Exception $e) {
            return redirect('/dang-nhap');
        }
        // only allow people with @company.com to login
        // if(explode("@", $user->email)[1] !== 'company.com'){
        //     return redirect()->to('/');
        // }
        // check if they're an existing user
        $existingUser = User::where('email', $user->email)->first();
        if($existingUser){
            // log them in
            \Cart::destroy();
            Auth::Login($existingUser, true);
        } else {
            // create a new user
            $newUser                  = new User;
            $newUser->username            = $user->getName();
            $newUser->email           = $user->getEmail();
            $newUser->provider_id       = $user->getId();
            $newUser->password          = md5($user->token);
            $newUser->facebook_id       = '';
            $newUser->save();
            Auth::Login($newUser, true);
        }
        return redirect()->route('home');
    }
}
