<!DOCTYPE html>
<html lang=en-US class=no-js>

<head>
    <meta charset=UTF-8>
    <meta name=viewport content="width=device-width, initial-scale=1">

    <title>The Trailer:Dealer</title>


    <link rel=stylesheet href='https://fonts.googleapis.com/css?family=Assistant%3A200%2C300%2Cregular%2C600%2C700%2C800%7CKarla%3Aregular%2Citalic%2C700%2C700italic%7CPT+Sans%3Aregular%2Citalic%2C700%2C700italic&amp;subset=latin%2Chebrew%2Clatin-ext%2Ccyrillic-ext%2Ccyrillic&amp;ver=5.0.3' type=text/css media=all>


    <link rel=stylesheet href="{{ asset('/assect/plugins/goodlayers-core/plugins/combine/style.css') }}" type=text/css media=all>
    <link rel=stylesheet href="{{ asset('/assect/plugins/goodlayers-core/include/css/page-builder.css') }}" type=text/css media=all>
    <link rel=stylesheet href="{{ asset('/assect/plugins/revslider/public/assets/css/settings.css') }}" type=text/css media=all>
    <link rel=stylesheet href="{{ asset('/assect/plugins/quform/css/base.css') }}" type=text/css media=all>
    <link rel=stylesheet href="{{ asset('/assect/css/style-core.css') }}" type=text/css media=all>
    <link rel=stylesheet href="{{ asset('/assect/css/logisco-style-custom.css') }}" type=text/css media=all>
        <script href="../../../ad_assects/app-assets/js/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style type="text/css">

    .r {
    width: 61%;
}
  
        .user_card {
            /*height: 200px;*/
            width: 500px;
            margin-top: auto;
            margin-bottom: auto;
            background: transparent;
            position: relative;
            display: flex;
            justify-content: center;
            flex-direction: column;
            padding: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            border-radius: 5px;

        }
        .brand_logo_container {
            position: relative;
            height: 140px;
            width: 140px;
            top: -0x;
            
            background: #fff;
            padding: 10px;
            text-align: center;
        }
        @media screen and (max-width: 435px) {
             .brand_logo_container {
                    top: 28px;
                   }
        }

        .r{
            padding-left: 10px;
            padding-top: 1.5em;
        }
        
        .brand_logo {
            height: 160px;
            width: 160px;
            border-radius: 50%;
            border: 2px solid white;
            margin-bottom: 1em;
            margin-top: 7px;
        }
        .form_container {
            margin-top: 100px;
        }
        .login_btn {
            width: 100%;
            background: #c0392b !important;
            color: white !important;
        }
        .login_btn:focus {
            box-shadow: none !important;
            outline: 0px !important;
        }
        .login_container {
            padding: 0 2rem;
        }
        .input-group-text {
            background: #c0392b !important;
            color: white !important;
            border: 0 !important;
            border-radius: 0.25rem 0 0 0.25rem !important;
        }
        .input_user,
        .input_pass:focus {
            box-shadow: none !important;
            outline: 0px !important;
        }
        .custom-checkbox .custom-control-input:checked~.custom-control-label::before {
            background-color: #c0392b !important;
        }

        .first_product {
    width: 100%;
    text-align: center;
    padding: 1em 0 1em;
}

.first_product h3 {
    margin-bottom: 10px;
    text-transform: uppercase !important;
}

/*
.view_products{
    padding: 0;
}*/
.delete_icon{
    font-size: 18px;
    padding-top: 10px;
}

p.delete_icon {
    position: absolute;
    right: 20px;
    top: 17px;
}


.user_card:hover {
    -webkit-transform: scale(1.08);
    transform: scale(1.08);
}
.user_card{
    -webkit-transition: 0.4s ease;
    transition: 0.4s ease;
    }
</style>

</head>
<body class="home page-template-default page page-id-2039 gdlr-core-body logisco-body logisco-body-front logisco-full  logisco-with-sticky-navigation  logisco-blockquote-style-2 gdlr-core-link-to-lightbox" data-home-url=index.html>
<div class=logisco-mobile-header-wrap>
    <div class="logisco-mobile-header logisco-header-background logisco-style-slide logisco-sticky-mobile-navigation " id=logisco-mobile-header>
        <div class="logisco-mobile-header-container logisco-container clearfix">
            <div class="logisco-logo  logisco-item-pdlr">
                <div class=logisco-logo-inner>
                    <a class><img src="admin/assets/images/logend.png"  alt width=320 height=84 title=logo-big></a>
                </div>
            </div>
            <div class=logisco-mobile-menu-right>
                

                <div class=logisco-mobile-menu><a class="logisco-mm-menu-button logisco-mobile-menu-button logisco-mobile-button-hamburger" href=#logisco-mobile-menu><span></span></a>
                    <div class="logisco-mm-menu-wrap logisco-navigation-font" id=logisco-mobile-menu data-slide=right>
                        <ul id=menu-main-navigation class=m-menu>
                            <li class="menu-item menu-item-home "><a href={{url('/Dashboard')}}>Home</a></li>
                            
                            <li class="menu-item menu-item-has-children"><a href={{url('/mylocation')}}>My Location</a>
                               
                            </li>
                             <li class="menu-item menu-item-has-children current-menu-item"><a href={{url('/view_product')}}>My Product</a>  </li>
                            <li class="menu-item menu-item-has-children"><a href={{url('/membership_plans')}}>Membership plan</a>
                                
                            </li>
                            <li class="menu-item menu-item-has-children"><a href={{url('/profile')}}>Profile</a>
                               
                            </li>
                            <li class="menu-item menu-item-has-children"><a href={{url('/logout')}}>Logout</a>
                               
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="logisco-body-outer-wrapper ">
    <div class="logisco-body-wrapper clearfix  logisco-with-transparent-header logisco-with-frame">
        <div class=logisco-header-background-transparent>
            
            <header class="logisco-header-wrap logisco-header-style-plain  logisco-style-menu-right logisco-sticky-navigation logisco-style-slide" data-navigation-offset=75>
                <div class=logisco-header-background></div>
                <div class="logisco-header-container  logisco-header-full">
                    <div class="logisco-header-container-inner clearfix">
                        <div class="logisco-logo  logisco-item-pdlr">
                            <div class=logisco-logo-inner>
                                <a class><img src="ad_assects/imgg.png" alt width=320 height=84 title=logo-big></a>
                            </div>
                        </div>
                        <div class="logisco-navigation logisco-item-pdlr clearfix ">
                            <div class=logisco-main-menu id=logisco-main-menu>
                                <ul id=menu-main-navigation-1 class=sf-menu>
                                    <li class="menu-item menu-item-home  logisco-normal-menu"><a href={{url('/Dashboard')}}>Home</a></li>
                                    <li class="menu-item menu-item-has-children  logisco-normal-menu"><a href={{url('/mylocation')}}>My Location</a>
                                       
                                    </li>
                                    <li class="menu-item menu-item-has-children  current-menu-item logisco-normal-menu"><a href={{url('/view_product')}}>My Product</a> </li>
                                    
                                    <li class="menu-item menu-item-has-children logisco-normal-menu"><a href={{url('/profile')}}>Profile</a>
                                        
                                    </li>
                                    <li class="menu-item menu-item-has-children logisco-normal-menu"><a href={{url('/membership_plans')}} class=sf-with-ul-pre>Membership plan </a>
                                       
                                    </li>
                                    <li class="menu-item menu-item-has-children logisco-normal-menu"><a href={{url('/logout')}} class=sf-with-ul-pre>Logout</a>
                                       
                                    </li>

                                </ul>
                                <div class=logisco-navigation-slide-bar id=logisco-navigation-slide-bar></div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </header>
        </div>



        <!--<div class=logisco-page-wrapper id=logisco-page-wrapper>
            <div class=gdlr-core-page-builder-body>
                <div class="gdlr-core-pbf-wrapper " style="padding: 260px 0px 110px 0px;" id=gdlr-core-wrapper-1>
                    <div class=gdlr-core-pbf-background-wrap>
                        <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(assect/upload/slider-1-bg.jpg) ;background-size: cover ;background-position: center ;" data-parallax-speed=0></div>
                    </div>
  
                </div>
            </div>
        </div>-->
		 <div class="logisco-page-title-wrap  logisco-style-large logisco-center-align" style="background-image: url(assect/upload/slider-1-bg.jpg) ;background-size: cover ;background-position: center ;">
            <div class=logisco-header-transparent-substitute></div>
            <div class=logisco-page-title-overlay></div>
            <div class="logisco-page-title-container logisco-container">
                <div class="logisco-page-title-content logisco-item-pdlr">
                    <h3 class="logisco-page-title">My Product</h3>
                    
                </div>
            </div>
        </div>
      
      <div class="row">
                <div class="col-12 float-right">
           <a class="btn btn-success float-right" href="{{url('/add_product')}}" style="color: #fff; margin-bottom: 20px;margin-right: 75px; margin-top: 23px;">Add Product</a>
           </div>
       </div>
	  
	 <div id='list' class="row" style="padding: 50px;">
                 @foreach ($data as $data)
                    
                          <div class="col-lg-3 view_products" style="margin-bottom: 31px;">
    <div class="container h-100">
    <div class="d-flex justify-content-center h-100">
    <div class="user_card">                
    <div class="d-flex">
    
   <div class="first_product">
    <img src="{{ $data->img }} " class="brand_logo" alt="Location Image">
    <h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 20px ;font-weight: 700 ;letter-spacing: 0px ;text-transform: none ;color: #143369 ;">{{ $data->product_name }}</h3>
    <p style="margin-bottom: 0px !important;"> <strong>Our Wibsitr:</strong>{{ $data->url }}</p>
    <p class="delete_icon"><a href=" {{URL('/delete_pro/'.$data->id)}}" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash fa-lg"></i></a></p>
   
   </div>

   <!--  <div class="brand_logoss_container im_driver">
    
</div> -->

 </div>
    </div>
    </div>
    </div>
    </div>
                      
                    @endforeach

	</div>
      
      


 
                @include('footer')
  