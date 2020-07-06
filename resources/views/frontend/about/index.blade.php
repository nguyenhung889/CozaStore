@extends('frontend.base-layout')
@section('title', 'About us')
@section('content')
<style>
.section-slide{
	display:none !important;
}
.sec-banner{
	display:none !important;
}
#section-about{
	margin-top: 100px;
}
@media only screen and (max-width: 667px){
  #section-about{
      margin-top:0px;
	}
	#footer{
		margin-top: -150px;
	}
}
@media only screen and (max-width: 1024px){
  #section-about{
      margin-top:0px;
	}
	#footer{
		margin-top: -100px;
	}
}
</style>
<section class="bg-img1 txt-center p-lr-15 p-tb-92" id="section-about" style="background-image: url('{{asset('frontend/images/bg-01.jpg')}}');">
		<h2 class="ltext-105 cl0 txt-center">
			About
		</h2>
	</section>
		<div class="container bg0 p-t-75 p-b-120">
			<div class="row p-b-148">
				<div class="col-md-7 col-lg-8">
					<div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Story
						</h3>

						<p class="stext-113 cl6 p-b-26">
							CozaStore was born from the passion for business and fashion. Overcoming many challenges, CozaStore has become the most potential company of Vietnam's fashion industry. The company is appreciated by many large international fashion corporations and is chosen as a long-term cooperation partner.
						</p>

						<p class="stext-113 cl6 p-b-26">
							For domestic consumers, CozaStore is known as the leading fashion brand. In particular, customers are captivated by the modern, luxurious style of CozaStore on par with world famous brands.
						</p>
					</div>
				</div>

				<div class="col-11 col-md-5 col-lg-4 m-lr-auto">
					<div class="how-bor1 ">
						<div class="hov-img0">
							<img src="{{ asset('frontend/images/about-01.jpg') }}" alt="IMG">
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="order-md-2 col-md-7 col-lg-8 p-b-30">
					<div class="p-t-7 p-l-85 p-l-15-lg p-l-0-md">
						<h3 class="mtext-111 cl2 p-b-16">
							Our Mission
						</h3>

						<p class="stext-113 cl6 p-b-26">	
							The strength and potential of the company does not lie in numbers, machines or factories, but in the CozaStore Man himself. It is a dedicated, reputable Board of Directors, a staff of full of enthusiasm and creativity. Everyone desires to dedicate themselves to the mission of the company - where the idea of ​​sublimation, talent is encouraged, honesty and sacrifice are respected. It is the greatest and most valuable asset of the company built by each member every hour, every hour through every job and every product because it is the pride and work meaning of each member of the team. CozaStore.
							<br>
							So far, CozaStore is not only loved by customers for its luxurious and attractive fashion models, but also because we lead the way in continuously launching fashion collections.
							<br/>
							The road ahead is certainly full of thorns. Although we always try our best, we can still have unavoidable times. These challenges will help us to be stronger, stronger and more mature. CozaStore has no room for fearful people.
						</p>

						<div class="bor16 p-l-29 p-b-9 m-t-22">
							<p class="stext-114 cl6 p-r-40 p-b-11">
								Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn't really do it, they just saw something. It seemed obvious to them after a while.
							</p>

							<span class="stext-111 cl8">
								- Steve Job’s 
							</span>
						</div>
					</div>
				</div>

				<div class="order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30">
					<div class="how-bor2">
						<div class="hov-img0">
							<img src="{{ asset('frontend/images/about-02.jpg') }}" alt="IMG">
						</div>
					</div>
				</div>
			</div>
		</div>
@stop