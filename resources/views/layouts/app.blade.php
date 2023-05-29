<!doctype html>
 <html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

 <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="google-site-verification" content="I50deGcyV7lF_wSKDsSfRL4eCOfXPXCMi3FTAM3wPPA" />
    <!-- Google tag (gtag.js) -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-1K712JF1CB"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'G-1K712JF1CB');
    </script>
     <!-- CSRF Token -->
     <meta name="csrf-token" content="{{ csrf_token() }}">

     <title>@yield('meta_title')</title>
     <meta name="title" content="@yield('meta_title')">
     <meta name="keywords" content="@yield('meta_keywords')">
     <meta name="description" content="@yield('meta_description')">
     <link rel="icon" type="image/x-icon" href="/front_asset/assets/img/company-name.jpg">
     <meta property="og:title" content="@yield('meta_title')" />
     <meta property="og:description" content="@yield('meta_description')" />
     <meta property="og:url" content="{{ Request::fullUrl() }}" />
     <meta property="og:image" @yield('meta_image') />
     <meta property="og:type" content="website" />
     <meta property="og:locale" content="en_GB" />

     <meta name="twitter:card" content="summary_large_image" />
     <meta name="twitter:description" content="@yield('meta_description')" />
     <meta name="twitter:title" content="@yield('meta_title')" />
     <meta name="twitter:image" @yield('meta_image') />


     

     <!-- Fonts -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    
     



  



  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Titillium+Web:400,400i,600,600i,700,700i,900">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i,800,800i">
        <!-- carousel -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">


     <link href="https://kenwheeler.github.io/slick/slick/slick-theme.css" rel="stylesheet" />
     <link href="https://kenwheeler.github.io/slick/slick/slick.css" rel="stylesheet" />
     <link href="https://kenwheeler.github.io/slick/css/prism.css" rel="stylesheet" />

     
     
<!-- Bootstrap.Min.CSS  --> 
<link rel="stylesheet" href="/front_asset/assets/css/bootstrap.min.css">
        <!-- Owl.Carousel.Min.CSS -->
        <link rel="stylesheet" href="/front_asset/assets/css/owl.carousel.min.css">
        <!-- Owl.Theme.Default.Min.CSS -->
        <link rel="stylesheet" href="/front_asset/assets/css/owl.theme.default.min.css">
        <!-- Animate.Min.CSS -->
		<link rel="stylesheet" href="/front_asset/assets/css/animate.min.css">
        <!-- Font-Awesome.Min.CSS -->
        <link rel="stylesheet" href="/front_asset/assets/css/font-awesome.min.css">
        <!-- Flaticon.CSS -->
        <link rel="stylesheet" href="/front_asset/assets/font/flaticon.css">
        <!-- Magnific-Popup.Min.CSS -->
		<link rel="stylesheet" href="/front_asset/assets/css/magnific-popup.min.css">
        <!-- Style.CSS -->
        <link rel="stylesheet" href="/front_asset/assets/css/style.css">
        <!-- Responsive.CSS -->
        <link rel="stylesheet" href="/front_asset/assets/css/responsive.css">

         <!-- Favicon -->
         <link rel="icon" type="image/png" href="/front_asset/assets/img/Pramicure_Pharmaceutical_3_.png">

<!-- Schema Code -->
         <script type="application/ld+json">
        {
          "@context": "https://schema.org/",
          "@type": "WebSite",
          "name": "pramiscure",
          "url": "http://pramiscure.com/",
          "potentialAction": {
            "@type": "SearchAction",
            "target": "{search_term_string}",
            "query-input": "required name=search_term_string"
          }
        }
        </script>
     
 
 
 
 
<!-- Color Switcher Mockup -->

<link href="/front_asset/assets/css/color-switcher-design.css" rel="stylesheet">



<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@200;300;400;600;700;800;900&amp;family=Open+Sans:wght@300;400;600;700;800&amp;display=swap" rel="stylesheet">
     
     
    


    

 </head>

 <body>
 
        <!-- Start Header Section -->
        <header class="header header-style-one header-style-three">
            <div class="header-wrapper-one header-wrapper-three">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <ul class="contact-info">
                                <li>
                                    <i class="flaticon-clock-of-circular-shape-outline"></i>
                                    Mon to Sat 9:00am to 6:00pm
                                </li>
                                <li class="contact-none">
                                    <i class="flaticon-telephone-handle-silhouette"></i>
                                    <a href="tel:123-456-78910">+8968041670</a>
                                </li>
                                <li>
                                    <i class="flaticon-mail-black-envelope-symbol"></i>
                                    <a href="https://templates.envytheme.com/cdn-cgi/l/email-protection#e6839e9689808f9483a6818b878f8ac885898b"><span class="__cf_email__" data-cfemail="dcbfb3b2afa8aea9bfa8b5b3b29cbbb1bdb5b0f2bfb3b1">pramiscure.pharmaceuticals@gmail.com</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-5">
                            <div class="help-and-social-wrapper">
                                <ul class="help-desk">
                                    <li>
                                        <a href="/career">careers</a>
                                    </li>
                                    <li>
                                        <a href="#">help desk</a>
                                    </li>
                                    <li>
                                        <a href="/register-user">Register</a>
                                    </li>
                                </ul>
    
                                <ul class="social-links">
                                    <li>
                                        <a href="#"><i class="flaticon-twitter-black-shape"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="flaticon-youtube"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="flaticon-facebook-logo"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="flaticon-linkedin-logo"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="flaticon-instagram-logo"></i></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End header-wrapper-one -->

            <!-- Start Navbar Area -->
		    <div class="navbar-area">
                <!-- Menu For Mobile Device -->
                <div class="mobile-nav">
                   
                    <a href="/" class="logo">
                        <img src="/front_asset/assets/img/Pramicure_Pharmaceutical_3_.png" alt="">
                    </a>
                </div>
    
                <!-- Menu For Desktop Device -->
                <div class="construction-nav-one construction-nav-three">
                    <div class="container">
                        <nav class="navbar navbar-expand-md navbar-light">

                            <a class="navbar-brand" href="/">
                                <img src="/front_asset/assets/img/Pramicure_Pharmaceutical_3_.png" alt="">
                            </a>
    
                            <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                                <ul class="navbar-nav m-auto">
                                    <li class="nav-item">
                                        <a href="/" class="nav-link dropdown-toggle active">Home</a>
    
                                    </li>
                                    <li class="nav-item">
                                        <a href="about-us" class="nav-link dropdown-toggle">about</a>
                                       
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a href="#" class="nav-link dropdown-toggle">services</a>
                                        <ul class="dropdown-menu">
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="pcd-pharma-franchise">PCD Pharma </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="		third-party-manufacturing">Third Party manufacturing</a>
                                            </li>
                                             <li class="nav-item">
                                                <a class="dropdown-item" href="			/Branded-Generics">Branded-Generic</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="			/Critical-Care">Critical-Care</a>
                                            </li>
                                           
                                        </ul>
                                    </li>
                                   
                                    <li class="nav-item">
                                    <a href="/tablets" class="nav-link dropdown-toggle">Product</a>
                                   
                                        <!-- <ul class="dropdown-menu">
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="blog-one.html">blog one</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="blog-two.html">blog two</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="dropdown-item" href="blog-details.html">blog details</a>
                                            </li>
                                        </ul> -->
                                    </li>
                                    <li class="nav-item">
                                        
                                        <a href="/career" class="nav-link dropdown-toggle">Careers</a>
                                       
                                    </li>
                                   
                                    <li class="nav-item">
                                        
                                        <a href="/contact-us" class="nav-link dropdown-toggle">contact</a>
                                       
                                    </li>
                                </ul>

                                <div class="other-option">
                                    <a class="default-btn" href="/lms/login">Download Our Form</a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div><!-- End Navbar Area -->
        </header> 
        <!-- End Header Section -->

     @yield('content')
     <!-- footer -->

    
        <!-- Start Top Footer Section -->
        <footer class="footer-top">
            <div class="container">
                <div class="row">
                     
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="pramise">
                        <div class="single-widget mb-30 centrig">
                        <a href="/" class="logo">
                        <img src="/front_asset/assets/img/Pramicure_Pharmaceutical_3_.png" alt="" style="margin-top:10px">
                    </a>
                            
                           <div> <a class="find-location" href="#">find location</a></div>
                        </div></div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-widget mb-30">
                            <h3>contact</h3>
                            <ul>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <span>Address:</span>
 Co-operate office - SCO-842,SF,NAC, CHANDIGARH, INDIA,160101<br>
HEAD OFFICE - ANNANTA COMPLEX, TOWNLET BANA, SECTOR -25, PANCHKULA, HARYANA, INDIA,134116
                                </li>
                               
                               
                                <li>
                                    <i class="flaticon-right"></i>
                                    <span>Email:</span>
                                    <a href="emailto:pramiscure.pharmaceuticals@gmail.com">pramiscure.pharmaceuticals@gmail.com</span></a>  
                                </li>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <span>Phone:</span>
                                    <a href="tel:8968041670">8968041670</a>  
                                </li>
                              
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="single-widget mb-30">
                            <h3>service</h3>
                            <ul>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <a href="/">Home</a>
                                </li>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <a href="about-us">About Us</a>
                                </li>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <a href="pcd-pharma-franchise">PCD Pharma Franchise</a>
                                </li>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <a href="third-party-manufacturing">Third Party Manufacturing</a>
                                </li>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <a href="#">Blog</a>
                                </li>
                                <li>
                                    <i class="flaticon-right"></i>
                                    <a href="Contact-Us">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                   
                </div>
            </div>
        </footer>
        <!-- End Top Footer Section -->

        <!-- Start Bottom Footer Section -->
        <footer class="footer-bottom">
            <div class="container">
                <div class="row">
                    
                    <div class="col-lg-6 col-md-6">
                        <div class="single-widget">
                       
                            <p>Copyright © 2022 Pramiscure Pharmaceuticals. Designed By :-<br><a href="https://shambhalaitsolution.com/" target="_blank"> Shambhala IT Solution</a> | <a href="https://dealkaregaindia.com/">Deal Karega India</a></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
                        <div class="single-widgets">
                            <ul class="social-links">
                                <li>
                                    <a href="#"><i class="flaticon-twitter-black-shape"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="flaticon-youtube"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="flaticon-facebook-logo"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="flaticon-linkedin-logo"></i></a>
                                </li>
                                <li>
                                    <a href="#"><i class="flaticon-instagram-logo"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End Bottom Footer Section -->
     
               
        <!-- Jquery.Mim.JS -->
     
        <script src="/front_asset/assets/js/jquery.min.js"></script>
        <!-- Bootstrap.Bundle.Mim.JS -->
       
       
        <!-- Meanmenu.Mim.JS -->
        <script src="/front_asset/assets/js/meanmenu.min.js"></script>
        <!-- Magnific.Popup.Min.JS -->
	    <script src="/front_asset/assets/js/magnific-popup.min.js"></script>
        <!-- Owl.Carousel.Min.JS -->
        <script src="/front_asset/assets/js/owl.carousel.min.js"></script>
        <!-- Wow.Min.JS -->
		<script src="/front_asset/assets/js/wow.min.js"></script>
		<!-- Mixitup.Min.JS -->
		<script src="/front_asset/assets/js/mixitup.min.js"></script>
		<!-- Form Validator Mim JS -->
		<script src="/front_asset/assets/js/form-validator.min.js"></script>
		<!-- Contact JS -->
		<script src="/front_asset/assets/js/contact-form-script.js"></script>
		<!-- Ajaxchimp Mim JS -->
		<script src="/front_asset/assets/js/ajaxchimp.min.js"></script>
        <!-- Active JS -->
        <script src="/front_asset/assets/js/active.js"></script>
        
        
<script>
 $('div a').click(function(e) {
 $('#myModal img').attr('src', $(this).attr('data-img-url')); 
 });
</script> 

<script>
    $("#tile-1 .nav-tabs a").click(function() {
  var position = $(this).parent().position();
  var width = $(this).parent().width();
    $("#tile-1 .slider").css({"left":+ position.left,"width":width});
});
var actWidth = $("#tile-1 .nav-tabs").find(".active").parent("li").width();
var actPosition = $("#tile-1 .nav-tabs .active").position();
$("#tile-1 .slider").css({"left":+ actPosition.left,"width": actWidth});
</script>


</div>
 </body>

 </html>