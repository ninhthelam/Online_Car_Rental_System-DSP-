<%-- 
    Document   : staffregister
    Created on : 30-Mar-2020, 21:52:38
    Author     : ninhthelam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=== Favicon ===-->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

        <title> Driver registration</title>

        <!--=== Bootstrap CSS ===-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!--=== Slicknav CSS ===-->
        <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
        <!--=== Magnific Popup CSS ===-->
        <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
        <!--=== Owl Carousel CSS ===-->
        <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
        <!--=== Gijgo CSS ===-->
        <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
        <!--=== FontAwesome CSS ===-->
        <link href="assets/css/font-awesome.css" rel="stylesheet">
        <!--=== Theme Reset CSS ===-->
        <link href="assets/css/reset.css" rel="stylesheet">
        <!--=== Main Style CSS ===-->
        <link href="style.css" rel="stylesheet">
        <!--=== Responsive CSS ===-->
        <link href="assets/css/responsive.css" rel="stylesheet">



    </head>

    <body>
      
        <!--== Login Page Content Start ==-->
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h4>Welcome to Our company. We are waiting you !</h4>
                                <form method="post" action="DriverRegister">
                                    <div class="name">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="text" placeholder="First Name" name="firstname" required>
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" placeholder="Last Name" name="lastname" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">
                                        <p><div style="color: #FF0000;">${errorMessage}</div></p>
                                        <input type="text" placeholder="Number Insurance" name="ni" pattern="[0-9]+" title="Number only" required>
                                    </div>
                                     <div class="">
                                        <input type="text" placeholder="License Number" name="license"  required>
                                    </div>
                                  
                                    <div class="">
                                        <input type="text" placeholder="Phone number" name="phone" pattern="[0-9]+" title="Number only" required>
                                    </div>
                                    <div class="password">
                                        <input type="password" name="password" placeholder="Password" required>
                                    </div>
                                    <div class="log-btn">
                                        <button type="submit"><i class="fa fa-check-square"></i> Sign Up</button>
                                    </div>
                                </form>
                            </div>

                            
                            <div class="create-ac">
                                <p>Have an account? <a href="login.jsp">Sign In</a></p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        

        <!--=======================Javascript============================-->
        <!--=== Jquery Min Js ===-->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
        <!--=== Jquery Migrate Min Js ===-->
        <script src="assets/js/jquery-migrate.min.js"></script>
        <!--=== Popper Min Js ===-->
        <script src="assets/js/popper.min.js"></script>
        <!--=== Bootstrap Min Js ===-->
        <script src="assets/js/bootstrap.min.js"></script>
        <!--=== Gijgo Min Js ===-->
        <script src="assets/js/plugins/gijgo.js"></script>
        <!--=== Vegas Min Js ===-->
        <script src="assets/js/plugins/vegas.min.js"></script>
        <!--=== Isotope Min Js ===-->
        <script src="assets/js/plugins/isotope.min.js"></script>
        <!--=== Owl Caousel Min Js ===-->
        <script src="assets/js/plugins/owl.carousel.min.js"></script>
        <!--=== Waypoint Min Js ===-->
        <script src="assets/js/plugins/waypoints.min.js"></script>
        <!--=== CounTotop Min Js ===-->
        <script src="assets/js/plugins/counterup.min.js"></script>
        <!--=== YtPlayer Min Js ===-->
        <script src="assets/js/plugins/mb.YTPlayer.js"></script>
        <!--=== Magnific Popup Min Js ===-->
        <script src="assets/js/plugins/magnific-popup.min.js"></script>
        <!--=== Slicknav Min Js ===-->
        <script src="assets/js/plugins/slicknav.min.js"></script>

        <!--=== Mian Js ===-->
        <script src="assets/js/main.js"></script>

    </body>
</html>
