<%-- 
    Document   : login
    Created on : 03-Feb-2020, 15:49:41
    Author     : ninhthelam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=== Favicon ===-->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

        <title>Online Car Rental System Login</title>

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

        <%@include file= "header.jsp"%>

        <!--== Page Title Area Start ==-->
        <section id="page-title-area" class="section-padding overlay">
            <div class="container">
                <div class="row">
                    <!-- Page Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2>Login</h2>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                            <p>Make you feel safe and comfortable.</p>
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
                    <div class="col-lg-4 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3>Welcome Customer!</h3>
                                <form action="MemberValidation" method="POST">
                                    <div class="username">
                                        <input type="text" placeholder="Email " pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="email" required="">
                                        <p><div style="color: #FF0000;">${errorMessage}</div></p>
                                    </div>
                                    <div class="password">
                                        <input type="password" placeholder="Password" name="password" required>
                                    </div>
                                    

                                    <div class="log-btn">
                                        <button type="submit"><i class="fa fa-sign-in"></i> Log In</button>
                                    </div>

                                </form>
                            </div>

                            <div class="login-other">
                                <span class="or">or</span>
                                <a href="#" class="login-with-btn facebook"><i class="fa fa-facebook"></i> Login With Facebook</a>
                                <a href="#" class="login-with-btn google"><i class="fa fa-google"></i> Login With Google</a>
                            </div>
                            <div class="create-ac">
                                <p>Don't have an account? <a href="register.jsp">Sign Up</a></p>
                            </div>
                            <div class="login-menu">
                                
                                
                                <a href="employeeslogin.jsp">Employee terminal login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== Login Page Content End ==-->

        <!--== Footer Area Start ==-->
        <%@include file = "footer.jsp" %>
    </body>

</html>
