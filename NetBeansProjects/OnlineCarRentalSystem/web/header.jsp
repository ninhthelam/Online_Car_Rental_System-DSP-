<%-- 
    Document   : header
    Created on : 26-Mar-2020, 12:08:26
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

        <title>Online Car Rental System</title>

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


        <!--[if lt IE 9]>
            <script src="//oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="//oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <!--== Header Area Start ==-->
        <header id="header-area" class="fixed-top">
            <!--== Header Top Start ==-->
            <div id="header-top" class="d-none d-xl-block">
                <div class="container">
                    <div class="row">
                        <!--== Single HeaderTop Start ==-->
                        <div class="col-lg-3 text-left">
                            <i class="fa fa-map-marker"></i> 4 Digston Street, Bristol
                        </div>
                        <!--== Single HeaderTop End ==-->

                        <!--== Single HeaderTop Start ==-->
                        <div class="col-lg-3 text-center">
                            <i class="fa fa-mobile"></i> +44 7564517898
                        </div>
                        <!--== Single HeaderTop End ==-->

                        <!--== Single HeaderTop Start ==-->
                        <div class="col-lg-3 text-center">
                            <i class="fa fa-clock-o"></i> Mon-Fri 09.30 - 18.00
                        </div>
                        <!--== Single HeaderTop End ==-->

                        <!--== Social Icons Start ==-->
                        <div class="col-lg-3 text-right">
                            <div class="header-social-icons">

                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                        <!--== Social Icons End ==-->
                    </div>
                </div>
            </div>
            <!--== Header Top End ==-->

            <!--== Header Bottom Start ==-->
            <div id="header-bottom">
                <div class="container">
                    <div class="row">
                        <!--== Logo Start ==-->
                        <div class="col-lg-4">
                            <a href="home.jsp" class="logo">
                                <img src="assets/img/logo.png" alt="JSOFT">
                            </a>
                        </div>
                        <!--== Logo End ==-->

                        <!--== Main Menu Start ==-->
                        <div>
                            <nav class="mainmenu alignright">
                                <ul>
                                    <li><a href="home.jsp">Home</a>                                    
                                    </li>
                               </li>
                                    <li class="active"><a href="home.jsp">Pages</a>
                                        <ul>
                                            <li><a href="account_modification.jsp">Account</a></li>
                                            <li><a href="login.jsp">Log In</a></li>
                                            <li><a href="register.jsp">Register</a></li>
                                            <li><a href="employeeslogin.jsp">Employees?</a></li>
                                           
                                        </ul>
                                    </li>
                                    <li><a href="customermanagebooking.jsp">Booking</a></li>
                                    <li><a href="allcar-infor.jsp">Cars</a></li>
                                    <li><a href="faq.jsp">FAQ</a></li>
                                   <li><a href="driver.jsp">Driver</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                     <li><a href="Logout">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                        <!--== Main Menu End ==-->
                    </div>
                </div>
            </div>
            <!--== Header Bottom End ==-->
        </header>
    </body>
</html>