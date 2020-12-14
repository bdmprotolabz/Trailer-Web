<!DOCTYPE html>
<html lang=en-US class=no-js>

<head>
    <meta charset=UTF-8>
    <meta name=viewport content="width=device-width, initial-scale=1">

    <title>The Trailer:Dealer</title>
    <meta name="csrf-token" content="{{ csrf_token() }}" />

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
        .user_card {
            height: 320px;
            width: 400px;
            margin-top: auto;
            margin-bottom: auto;
            background: #fff;
            position: relative;
            display: flex;
            justify-content: center;
            flex-direction: column;
            padding: 10px;
            box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.69);
            -webkit-box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.62);
            -moz-box-shadow: 2px 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.69);
            border-radius: 5px;

        }
        .brand_logo_container {
            position: absolute;
            height: 170px;
            width: 170px;
            top: -75px;
            border-radius: 50%;
            background: #60a3bc;
            padding: 10px;
            text-align: center;
        }
        .brand_logo {
            height: 150px;
            width: 150px;
            border-radius: 50%;
            border: 2px solid white;
        }
        .form_container {
            margin-top: 20px;
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
        .input-group{
            width: 325px;
        }
        .input_user,
        .input_pass:focus {
            box-shadow: none !important;
            outline: 0px !important;
        }
.modal-backdrop {
    /* bug fix - no overlay */    
  display: none;    
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
                            
                            <li class="menu-item menu-item-has-children "><a href={{url('/mylocation')}}>My Location</a>
                               
                            </li>
                            <li class="menu-item menu-item-has-children"><a href={{url('/view_product')}}>My Product</a>  </li>
                            <li class="menu-item menu-item-has-children"><a href={{url('/membership_plans')}}>Membership plan</a>
                                
                            </li>
                            <li class="menu-item menu-item-has-children current-menu-item"><a href={{url('/profile')}}>Profile</a>
                               
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
                                    <li class="menu-item menu-item-has-children logisco-normal-menu"><a href={{url('/mylocation')}}>My Location</a>
                                       
                                    </li>
                                      
                                       <li class="menu-item menu-item-has-children  logisco-normal-menu"><a href={{url('/view_product')}}>My Product</a> </li>
                                    <li class="menu-item menu-item-has-children current-menu-item logisco-normal-menu"><a href={{url('/profile')}}>Profile</a>
                                        
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



    <!--    <div class=logisco-page-wrapper id=logisco-page-wrapper>
            <div class=gdlr-core-page-builder-body>
                <div class="gdlr-core-pbf-wrapper " style="padding: 260px 0px 110px 0px;" id=gdlr-core-wrapper-1>
                    <div class=gdlr-core-pbf-background-wrap>
                        <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url(assect/upload/hp-half-bg-2.jpg) ;background-size: cover ;background-position: center ;" data-parallax-speed=0></div>
                    </div>
  
                </div>
            </div>
        </div>-->


        <div class="logisco-page-title-wrap  logisco-style-large logisco-center-align" style="background-image: url(assect/upload/hp-half-bg-2.jpg) ;background-size: cover ;background-position: center ;">
            <div class=logisco-header-transparent-substitute></div>
            <div class=logisco-page-title-overlay></div>
            <div class="logisco-page-title-container logisco-container">
                <div class="logisco-page-title-content logisco-item-pdlr">
                    <h3 class="logisco-page-title"></h3>
                    
                </div>

               
            </div>
            <div class="profile_view1" style="background: #333333bf;text-align: left;">
              <div class="container profile_contr">
                <img src="{{ $data->image}}" class="brnd_profile_img"><a data-toggle="modal" data-target="#form"><i id='mod' class="fa fa-camera edit_profileicon" aria-hidden="true"></i></a><span class="name_data">{{ $data->name}} {{ $data->l_name}}</span> <p class="reviews">{{ $result[0]->totel_revi}} Reviews</p>


              </div>

            </div>
        </div>

    <style type="text/css">

        i.fa.fa-camera.edit_profileicon {
              position: relative;
              color: #fff;
              font-size: 23px;
              top: 0px;
              right: 42px;
              font-weight: bold;
             
            background-color: var(--secondary-button-background);
          }
          .brnd_profile_img{
              width: 140px;
              height:140px;
              border-radius: 50%;
              position: relative;
              top: -3em;
              border: 5px solid #fff;
          }

          span.name_data {
              color: #fff;
              font-size: 25px;
              font-weight: bold;
              padding-left: 15px;
              position: relative;
              top: -1em;

          }

          .user_card{
            margin-bottom: 4em;
          }

          p.reviews {
              float: right;
              color: #fff;
              font-size: 25px;
              padding: 0.9em 0 0;
              position: relative;
              right: 4em;
              text-align: center;
          }
   </style>
   

   <div id='list'  class="gdlr-core-pbf-wrapper" style="padding: 115px 0px 0px 0px">
   	   <div class="container h-100">
              <div class="d-flex justify-content-center h-100">
                <div class="user_card">
              <!--  <div class="d-flex justify-content-center">
                    <div class="brand_logo_container">
                      <img src="{{ $data->image}}" class="brand_logo" alt="Location Image">
                    </div>
                </div>-->
          
                    <div class="d-flex justify-content-center form_container">
                       <form id="data" method="post" enctype="multipart/form-data"   >
                        
                           <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
                           <div class="input-group mb-3">  
                               <div class="input-group-append">
                               <span class="input-group-text"><i class="fas fa-user"></i></span>  
                               </div>
                               <input type="text" name="name" id="name" class="form-control input_user" required value="{{ $data->name}}" placeholder="First name">
                           </div>

                           <div class="input-group mb-3">  
                               <div class="input-group-append">  
                               <span class="input-group-text"><i class="fas fa-user"></i></span>  
                               </div>
                               <input type="text" name="lastname" id="lastname" class="form-control input_user" required value="{{ $data->l_name}}" placeholder="Last name">
                           </div>

                          <div class="input-group mb-3">
                               <div class="input-group-append">  
                                <span class="input-group-text"><i class="fas fa-user"></i></span>  
                              </div>
                              <input type="text" name="contact" readonly class="form-control input_user" required value="{{ $data->contact}}" placeholder="Phone Number">  
                          </div>
                             <div><input class="form-control" id="accesstoken" name="accesstoken" required type="hidden" value="123hg213g123hg231hg321h123fgj"> </div> 
                             <div><input class="form-control" id="dealerID" name="dealerID" required type="hidden" value="{{ Session::get('admin') }}"> </div>              
                          
                           <div class="input-group mb-3">  
                               <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-user"></i></span> 
                               </div>
                               <input type="text" name="email" id="email" class="form-control input_user" required value="{{ $data->email}}" placeholder="Email"> 
                           </div>
                          <div class="d-flex justify-content-center mt-3 login_container">
                              <button type="submit" name="button" class="btn login_btn">Update</button>
                          </div>          
                     </form>
                  </div>
            </div>
         </div>
      </div>
    </div>   
   

     
<div class="modal fade" id="form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">Update Image</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post" id='imag'>
        <div class="modal-body">
          <div class="form-group">
            <label for="email1">Select Image</label>
            <input type="file" class="form-control" id="email1" name='user_img' aria-describedby="emailHelp" placeholder="Enter email">
                <div><input class="form-control" id="accesstoken" name="accesstoken" required type="hidden" value="123hg213g123hg231hg321h123fgj"> </div> 
    <div><input class="form-control" id="dealerID" name="dealerID" required type="hidden" value="{{ Session::get('admin') }}"> </div>  
          </div>
         
        </div>
        <div class="modal-footer border-top-0 d-flex justify-content-center">
          <button type="submit" class="btn btn-success">Update</button>
        </div>
      </form>
    </div>
  </div>
</div>         
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>   


<script>
$("form#data").submit(function(e) {
    e.preventDefault();   
//alert("giii");
//exit();
    var formData = new FormData(this);
 
    $.ajax({
        url: "{{ Session::get('url') }}API/dealer.php/update_profile",
        type: 'POST',
        data: formData,
        success: function (respons) {
           
           var data = JSON.parse(respons);
            var id =data.message;
           if(id=='Success'){
              alert('your profile Updated');
            }
            location.reload();
        //    $('#msg').html("<div class='alert alert-danger'>" + id + "</div>");

        },
        cache: false,
        contentType: false,
        processData: false
    });
});
</script>

<script>
$("form#imag").submit(function(e) {
    e.preventDefault();   
//alert("giii");
//exit();
    var formData = new FormData(this);
 
    $.ajax({
        url: "{{ Session::get('url') }}API/dealer.php/update_image",
        type: 'POST',
        data: formData,
        success: function (respons) {
           
           var data = JSON.parse(respons);
            var id =data.message;
           // alert(id);
            if(id=="Success"){
              alert('your profile Updated');
            }
            location.reload();
        //    $('#msg').html("<div class='alert alert-danger'>" + id + "</div>");

        },
        cache: false,
        contentType: false,
        processData: false
    });
});
</script>


                @include('footer')
  