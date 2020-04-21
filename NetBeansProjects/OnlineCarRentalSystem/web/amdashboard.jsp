<%-- 
    Document   : amdashboard
    Created on : 31-Mar-2020, 14:08:50
    Author     : ninhthelam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=== Favicon ===-->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

        <title>Online Car Rental System </title>

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
        <!--== Header Area Start ==-->
        <header id="header-area" class="fixed-top">
            <!--== Header Bottom Start ==-->

            <div id="header-bottom">
                <div class="container">
                    <div class="row">
                        <!--== Logo Start ==-->
                        <div class="col-lg-4">
                            <a href="index2.html" class="logo">
                                <img src="assets/img/logo.png" alt="JSOFT">
                            </a>
                        </div>
                        <!--== Logo End ==-->

                        <!--== Main Menu Start ==-->
                        <div>
                            <nav class="mainmenu alignright">
                                <ul>
                                    <li><a href="accountstm.jsp"> List of payment statements</a>                                    
                                    </li>
                                    <li><a href="payment_report.jsp"> Generate payment report</a></li>
                                    <li><a href="#"> Staff management</a>
                                        <ul>
                                            <li><a href="accountmanagement.jsp">Add account</a></li>
                                            <li><a href="accountmanagement.jsp"> Delete account</a></li>
                                            <li><a href="accountmanagement.jsp"> Amend account</a></li>
                                           
                                        </ul>
                                    </li>
                                    <li><a href="#"> Customer management</a>
                                        <ul>
                                            <li><a href="am_customeraccount.jsp">manage account</a></li>
                                           
                                        </ul>
                                    </li>
                                     <li><a href="am_driveraccount.jsp">Driver management</a></li>
                                    <li><a href="Logout"> Logout</a></li>


                                </ul>
                            </nav>
                        </div>
                        <!--== Main Menu End ==-->
                    </div>
                </div>
            </div>
            <!--== Header Bottom End ==-->
        </header>
        <section id="about-area" class="section-padding">
            <div class="container">
                <div class="row">
                    <!-- Section Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h4>Announcement</h4 s>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                            <p> Car Rental Company System built in 2020.</p>
                        </div>
                    </div>
                    <!-- Section Title End -->
                </div>

                <div class="row">
                    <!-- About Content Start -->
                    <div class="col-lg-6">
                        <div class="display-table">
                            <div class="display-table-cell">
                                <div class="about-content">
                                    <p>Coronavirus (COVID-19): what you need to do
                                        Stay at home
                                        Only go outside for food, health reasons or work (but only if you cannot work from home)
                                        If you go out, stay 2 metres (6ft) away from other people at all times
                                        Wash your hands as soon as you get home
                                        Do not meet others, even friends or family.

                                        You can spread the virus even if you don’t have symptoms.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- About Content End -->

                    <!-- About Video Start -->
                    <div class="col-lg-6">
                        <div class="about-image">
                            <img src="assets/img/home-2-about.png" alt="JSOFT">
                        </div>
                    </div>
                    <!-- About Video End -->
                </div>

                <!-- About Fretutes Start -->
                <div class="about-feature-area">
                    <div class="row">
                        <!-- Single Fretutes Start -->
                        <div class="col-lg-4">
                            <div class="about-feature-item active">
                                <i class="fa fa-car"></i>
                                <h3>Employees Online Working</h3>
                                <p>Employees can access Employee On Line to book their annual leave, shift requests and to book their bank availability.</p>
                            </div>
                        </div>
                        <!-- Single Fretutes End -->

                        <!-- Single Fretutes Start -->
                        <div class="col-lg-4">
                            <div class="about-feature-item">
                                <i class="fa fa-car"></i>
                                <h3>Employees policy</h3>
                                <p>Vacation and Sick Time.</p>
                                <p>Employee Compensation Policies.</p>
                                <p>Health Benefits Policies.</p>
                                <p>Employee Retirement Packages.</p>
                               
                            </div>
                        </div>
                        <!-- Single Fretutes End -->

                        <!-- Single Fretutes Start -->
                        <div class="col-lg-4">
                            <div class="about-feature-item">
                                <i class="fa fa-car"></i>
                                <h3>Checking Rota</h3>
                                <p>All employees must check the rota time as soon as possible.</p>
                            </div>
                        </div>
                        <!-- Single Fretutes End -->
                    </div>
                </div>
                <!-- About Fretutes End -->
            </div>
        </section>

    </body>
</html>
