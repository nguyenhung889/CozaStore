@extends('frontend.base-layout')
@section('title','Coza Store')
@section('content')
<style>
.img-product{
  width: 300px;
  height:372px;
}

@media only screen and (max-width: 667px){
 .container{
      margin-top:-70px;
  }
  .ltext-103{
    font-size:33px;
  }
  .stext-106{
    font-size:14px;
  }
  .img-product{
  height: auto;
  }
}
@media only screen and (max-width: 1024px){
  #section-contact{
      margin-top:0px;
	}
}
</style>
<div class="sec-banner bg0 p-t-80 p-b-50">
    <div class="container">
    <div class="p-b-10 sale-title">
        <h3 class="ltext-103 cl5">
          Top sale
        </h3>
        <a href="{{ route('fr.topsale') }}" class="show-all">Show all ></a>
      </div>
      <div class="swiper-container">
        <div class="swiper-wrapper">
        @foreach($products as $item)
        <?php $link = json_decode($item->image_product)[0] ?>
        @if($item->sale_off)
          <div class="swiper-slide" style="">
						<div class="swiper-slide__display">
							<span style="position: relative;">
								<img src="{{ URL::to('/') }}/upload/images/{{ $link }}" alt="IMG-PRODUCT" styLe="height:333px;" class="image-product">	
                <div class="_2N1Tif"><div class="coza-badge coza-badge--fixed-width coza-badge--promotion"><div class="coza-badge--promotion__label-wrapper coza-badge--promotion__label-wrapper--vi"><span class="percent">{{$item->sale_off}}%</span><span class="coza-badge--promotion__label-wrapper__off-label coza-badge--promotion__label-wrapper__off-label--vi">sale</span></div></div></div>
								<div class="inline-text">
									<div class="block2-txt-child1 flex-col-l ">
										<a href="{{ route('fr.detailPd',['slug' => $item->pro_slug, 'id' => $item->id]) }}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6" tabindex="0">
										{{$item->name_product}}
										</a>
										<span class="stext-105 cl3 sale_price">
										<strike>{{$item->price}}$</strike>&nbsp;&nbsp;<h4 style="color: red;">{{$item->price - $item->price * $item->sale_off/100}}$</h4>
										</span>
									</div>
								</div>
							</span>
						</div>
					</div>
        @endif
        @endforeach
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
      </div>
    </div>
  </div>
<section class="bg0 p-t-23 p-b-50">
    <div class="container">
      <div class="p-b-10">
        <h3 class="ltext-103 cl5">
          Product Overview
        </h3>
      </div>

      <div class="flex-w flex-sb-m p-b-52">
        <div class="flex-w flex-l-m filter-tope-group m-tb-10">
          <a href="{{ route('fr.product') }}" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5 how-active1" data-filter="*">
            All Products
          </a>
          @foreach($categories as $cate)
          <?php $name = json_decode($cate)->name;
                $id = json_decode($cate)->id;
                $cate_slug = json_decode($cate)->cate_slug ?>
          <a href="{{ route('fr.getCategories',[$cate_slug, $id]) }}" class="stext-106 cl6 hov1 bor3 trans-04 m-r-32 m-tb-5" data-filter=".women">
            {{ $name }}
          </a>
          @endforeach
        </div>     
        <!-- Search product -->
        <div class="dis-none panel-search w-full p-t-10 p-b-15">
          <div class="bor8 dis-flex p-l-15">
            <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
              <i class="zmdi zmdi-search"></i>
            </button>

            <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search-product" placeholder="Search">
          </div>  
        </div>

        <!-- Filter -->
        <div class="dis-none panel-filter w-full p-t-10">
          <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
            <div class="filter-col1 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">
                Sort By
              </div>

              <ul>
                <li class="p-b-6">
                  <a href="#" class="filter-link stext-106 trans-04 filter-link-active">
                    Newness
                  </a>
                </li>

                <li class="p-b-6">
                  <a href="#" class="filter-link stext-106 trans-04">
                    Price: Low to High
                  </a>
                </li>

                <li class="p-b-6">
                  <a href="#" class="filter-link stext-106 trans-04">
                    Price: High to Low
                  </a>
                </li>
              </ul>
            </div>

            <div class="filter-col2 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">
                Price
              </div>

              <form action="">
                <span>
                  Min:<br />
                  <input type="number" name="min_price" required style="border: 1px solid gray;
                  border-radius:10px; padding-left:10px;"/>
                  Max:<br />
                  <input type="number" name="max_price" required style="border: 1px solid gray;
                  border-radius:10px; padding-left:10px;"/>
                  <button
                    id="btnSort"
                    type="submit"
                    class="btn btn-primary"
                    style="margin-top:10px;"
                  >
                    OK
                  </button>
                </span>
              </form>
            </div>

            <div class="filter-col3 p-r-15 p-b-27">
              <div class="mtext-102 cl2 p-b-15">
                Color
              </div>

              <ul>
              @foreach($colors as $data)
              <?php $cl_name = json_decode($data)->name_color ?>
                <li class="p-b-6">
                  <a href="{{ route('fr.sortProductsByColor', $data->id) }}" class="filter-link stext-106 trans-04">
                    {{ $cl_name }}
                  </a>
                </li>
              @endforeach
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="row isotope-grid">
        @foreach($listPd as $key => $product)
        @if($product['sale_off'])
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img class="img-product" src="{{ URL::to('/') }}/upload/images/{{ $product['image_product'][0] }}" alt="IMG-PRODUCT">

              <a href="{{ route('fr.detailPd',['slug' => $product['pro_slug'],'id' => $product['id']]) }}" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
                Quick View
              </a>
              <div class="_2N1Tif"><div class="coza-badge coza-badge--fixed-width coza-badge--promotion"><div class="coza-badge--promotion__label-wrapper coza-badge--promotion__label-wrapper--vi"><span class="percent">{{$product['sale_off']}}%</span><span class="coza-badge--promotion__label-wrapper__off-label coza-badge--promotion__label-wrapper__off-label--vi">sale</span></div></div></div>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="{{ route('fr.detailPd',['slug' => $product['pro_slug'],'id' => $product['id']]) }}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                  {{ $product['name_product'] }} 
                  @if($product['qty'] == 0)
                    <span><i style="color:red; font-family: Arial;">(Sold out)</i></span>
                  @endif
                </a>

                <span class="stext-105 cl3 sale_price">
                  <strike>{{$product['price']}}$</strike>&nbsp;&nbsp;<h4 style="color: red;">{{$product['price'] - $product['price'] * $product['sale_off']/100}}$</h4>
                </span>
              </div>
            </div>
          </div>
        </div>
        @else
        <div class="col-sm-6 col-md-4 col-lg-3 p-b-35 isotope-item women">
          <!-- Block2 -->
          <div class="block2">
            <div class="block2-pic hov-img0">
              <img class="img-product" src="{{ URL::to('/') }}/upload/images/{{ $product['image_product'][0] }}" alt="IMG-PRODUCT">

              <a href="{{ route('fr.detailPd',['slug' => $product['pro_slug'],'id' => $product['id']]) }}" class="block2-btn flex-c-m stext-103 cl2 size-102 bg0 bor2 hov-btn1 p-lr-15 trans-04">
                Quick View
              </a>
            </div>

            <div class="block2-txt flex-w flex-t p-t-14">
              <div class="block2-txt-child1 flex-col-l ">
                <a href="{{ route('fr.detailPd',['slug' => $product['pro_slug'],'id' => $product['id']]) }}" class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6">
                  {{ $product['name_product'] }} 
                  @if($product['qty'] == 0)
                    <span><i style="color:blue; font-family: Arial;">(Sold out)</i></span>
                  @endif
                </a>

                <span class="stext-105 cl3 sale_price">
                  {{$product['price']}}$
                </span>
              </div>
            </div>
          </div>
        </div>
        @endif
        @endforeach    
      </div>

      <!-- Load more -->
      {{-- <div class="flex-c-m flex-w w-full p-t-45">
        <a href="#" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
          Load More
        </a>
      </div> --}}
    </div>
  </section>
@endsection 
@push('js')
  <script type="text/javascript">
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 1,
      spaceBetween: 10,
      // init: false,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      breakpoints: {
        640: {
          slidesPerView: 1,
          spaceBetween: 10,
        },
        768: {
          slidesPerView: 3,
          spaceBetween: 10,
        },
        1024: {
          slidesPerView: 4,
          spaceBetween: 10,
        },
        1366: {
          slidesPerView: 5,
          spaceBetween: 10,
        },
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  </script>
  @endpush     