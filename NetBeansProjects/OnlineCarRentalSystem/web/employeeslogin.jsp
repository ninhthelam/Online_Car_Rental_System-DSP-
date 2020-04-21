<%-- 
    Document   : employeeslogin
    Created on : 31-Mar-2020, 13:04:27
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




        <!--== Login Page Content Start ==-->
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3> Online Car Rental System  !</h3>
                                <form action="EmployeesValidation" method="POST">
                                    <div class="username">
                                        <input type="text" placeholder="ID " name="id" required="">
                                        <p><div style="color: #FF0000;">${errorMessage}</div></p>
                                        <p><div style="color: #2196f3;">${errorMessage1}</div></p>
                                    </div>
                                    <div class="password">
                                        <input type="password" placeholder="Password" name="password" required>
                                    </div>

                                    <div class="log-btn">
                                        <button type="submit"><i class="fa fa-sign-in"></i> Log In</button>
                                    </div>

                                </form>
                            </div>

                            <div class="create-ac">
                                <p>Don't have an account? <a href="staffregister.jsp">Sign Up</a></p>
                            </div>
                             <div class="create-ac">
                                <p>Become driver <a href="driver_register.jsp">Sign Up</a></p>
                            </div>
                                    

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== Login Page Content End ==-->

        <!--== Footer Area Start ==-->

    </body>

