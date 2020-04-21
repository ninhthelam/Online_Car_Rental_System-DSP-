<%-- 
    Document   : register
    Created on : 01-Feb-2020, 15:19:39
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

        <title> Registration</title>

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

    <body class="loader-active">



        <!--== Header Area Start ==-->
         <%@include file= "header.jsp"%>
        <!--== Header Area End ==-->

        <!--== Page Title Area Start ==-->
        <section id="page-title-area" class="section-padding overlay">
            <div class="container">
                <div class="row">
                    <!-- Page Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2> Register Page</h2>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                            <p>Passion for excellence. Welcome to our team.</p>
                        </div>
                    </div>
                    <!-- Page Title End -->
                </div>
            </div>
        </section>
        <!--== Page Title Area End ==-->

        <!--== Login Page Content Start ==-->
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3>Sign Up</h3>
                                <form method="post" action="MemberRegister">
                                    <div class="name">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="text" placeholder="First Name" name="firstname" required="">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" placeholder="Last Name" name="lastname" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="username">
                                        <input type="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" required>
                                        <p><div style="color: #FF0000;">${errorMessage}</div></p>
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

                            <div class="login-other">
                                <span class="or">or</span>
                                <a href="#" class="login-with-btn facebook"><i class="fa fa-facebook"></i> Signup With Facebook</a>
                                <a href="#" class="login-with-btn google"><i class="fa fa-google"></i> Signup With Google</a>
                            </div>
                            <div class="create-ac">
                                <p>Have an account? <a href="login.jsp">Sign In</a></p>
                            </div>
                            <div class="login-menu">
                                <a href="about.jsp">About</a>
                                <span>|</span>
                                <a href="contact.jsp">Contact</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== Login Page Content End ==-->

        <!--== Footer Area Start ==-->
        <%@include file= "footer.jsp"%>

    </body>

</html>