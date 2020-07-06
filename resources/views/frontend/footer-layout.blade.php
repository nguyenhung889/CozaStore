<!-- Footer -->
  <footer class="bg3 p-t-75 p-b-32" id="footer">
    <div class="container">
      <div class="row">
      <div class="col-sm-6 col-lg-4 p-b-50">
					<h4 class="stext-301 cl0 p-b-30">
						Categories
					</h4>

					<ul>
						<li class="p-b-10">
							<a href="{{ route('fr.getCategories', ['women', 3]) }}" class="stext-107 cl7 hov-cl1 trans-04">
								Women
							</a>
						</li>

						<li class="p-b-10">
							<a href="{{ route('fr.getCategories', ['men', 1]) }}" class="stext-107 cl7 hov-cl1 trans-04">
								Men
							</a>
						</li>

						<li class="p-b-10">
							<a href="{{ route('fr.getCategories', ['shoes', 1]) }}" class="stext-107 cl7 hov-cl1 trans-04">
								Shoes
							</a>
						</li>
					</ul>
				</div>

        <div class="col-sm-6 col-lg-4 p-b-50">
          <h4 class="stext-301 cl0 p-b-30">
            GET IN TOUCH
          </h4>

          <p class="stext-107 cl7 size-201">
            Any questions? Let us know in store at 98/165 Duong Quang Ham, Quan Hoa, Cau Giay, Ha Noi or call us on (+84) 964 387 230
          </p>

          <div class="p-t-27">
            <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
              <i class="fa fa-facebook"></i>
            </a>

            <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
              <i class="fa fa-instagram"></i>
            </a>

            <a href="#" class="fs-18 cl7 hov-cl1 trans-04 m-r-16">
              <i class="fa fa-pinterest-p"></i>
            </a>
          </div>
        </div>

        <div class="col-sm-6 col-lg-4 p-b-50">
          <h4 class="stext-301 cl0 p-b-30">
            Newsletter
          </h4>

          <form>
            <div class="wrap-input1 w-full p-b-4">
              <input class="input1 bg-none plh1 stext-107 cl7" type="text" name="email" placeholder="domanhhung812@gmail.com">
              <div class="focus-input1 trans-04"></div>
            </div>

            <div class="p-t-18">
              <button class="flex-c-m stext-101 cl0 size-103 bg1 bor1 hov-btn2 p-lr-15 trans-04">
                Subscribe
              </button>
            </div>
          </form>
        </div>
      </div>

      <div class="p-t-40">
        <div class="flex-c-m flex-w p-b-18">
          <a href="#" class="m-all-1">
            <img src="{{ asset('frontend/images/icons/icon-pay-01.png') }}" alt="ICON-PAY">
          </a>

          <a href="#" class="m-all-1">
            <img src="{{ asset('frontend/images/icons/icon-pay-02.png') }}" alt="ICON-PAY">
          </a>

          <a href="#" class="m-all-1">
            <img src="{{ asset('frontend/images/icons/icon-pay-03.png') }}" alt="ICON-PAY">
          </a>

          <a href="#" class="m-all-1">
            <img src="{{ asset('frontend/images/icons/icon-pay-04.png') }}" alt="ICON-PAY">
          </a>

          <a href="#" class="m-all-1">
            <img src="{{ asset('frontend/images/icons/icon-pay-05.png') }}" alt="ICON-PAY">
          </a>
        </div>

        <p class="stext-107 cl6 txt-center">
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

        </p>
      </div>
    </div>
  </footer>


  <!-- Back to top -->
  <div class="btn-back-to-top" id="myBtn">
    <span class="symbol-btn-back-to-top">
      <i class="zmdi zmdi-chevron-up"></i>
    </span>
  </div>