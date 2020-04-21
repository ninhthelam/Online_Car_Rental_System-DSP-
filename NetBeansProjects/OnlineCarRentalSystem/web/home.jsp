<%-- 
    Document   : home
    Created on : 26-Mar-2020, 13:07:15
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

        <title>Home Page</title>

        <!--=== Bootstrap CSS ===-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!--=== Vegas Min CSS ===-->
        <link href="assets/css/plugins/vegas.min.css" rel="stylesheet">
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
        
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
                $("#datepicker1").datepicker();
            });
        </script>
        


    </head>
    

    <body>


        <!--== Header Area Start ==-->
        <%@include file= "header.jsp"%>
        <!--== Header Area End ==-->

        <!--== SlideshowBg Area Start ==-->
        <section id="slideslow-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="slideshowcontent">
                            <div class="display-table">
                                <div class="display-table-cell">
                                    <h1>BOOK A CAR TODAY!</h1>
                                    <p> Support customers in Coronavirus (COVID-19) time. Getting a 40% discount for all trips booking. Let's pass this difficult time</p>

                                    <div class="book-ur-car">
                                        <form action="carsearch.jsp" method="POST">

                                            <div class="pick-location bookinput-item">
                                                <select class="custom-select" name="location">
                                                    <option selected>Pick Location</option>
                                                    <option value="1"> Bristol Airport</option>
                                                    <option value="2"> Bristol Coach Station and Bus</option>
                                                    <option value="3">Harbour Shine</option>
                                                    <option value="4">Carbot Circut</option>
                                                    <option value ="5"> Primark</option>
                                                </select>
                                            </div>
                                          


                                            <div class=" pick-up-date bookinput-item">
                                                <input  type="date" id="startDate2" name="pickdate" placeholder="Pick Date"  />
                                            </div>

                                            <div class=" retern-date bookinput-item">
                                                <input type ="date" name="returnday" id="endDate2" placeholder="Return Date" />
                                            </div>


                                            <div class="car-choose bookinput-item">
                                                <select class="custom-select" name="cartype" placeholder="Choose Car" required>
                                                    <option selected>Choose Car</option>
                                                    <option value="BMW">BMW</option>
                                                    <option value="Audi">Audi</option>
                                                    <option value="Lexus">Lexus</option>
                                                    <option value="Honda">Honda</option>
                                                    <option value="KIA">KIA</option>
                                                    <option value="MAZDA">MAZDA</option>
                                                    <option value="TOYOTA">TOYOTA</option>
                                                </select>
                                            </div>
                                            <div class="bookcar-btn bookinput-item">
                                                <button type="submit">Book Car</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>S
            </div>
        </section>
        <!--== SlideshowBg Area End ==-->
        <% HttpSession s = request.getSession();

        %>
         <h3><%=s.getAttribute("email")%></h3>
        
        

        <!--== About Us Area Start ==-->
        <section id="about-area" class="section-padding">
            <div class="container">
                <div class="row">
                    <!-- Section Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2>About us</h2>
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
                                    <p>The information technology these days are development every now and then, subsequently, the interest of utilizing Internet are expanding year-by-year. Likewise, a large portion of the customary organizations are moved their conventional plan of action into the cutting-edge plan of action, which is open an online service to allows the clients are able to interact with the system.</p>
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
                                <h3>ALL BRANDS</h3>
                                <p>Providing a variety of car brands with amazing quality from classic to luxury levels.</p>
                            </div>
                        </div>
                        <!-- Single Fretutes End -->

                        <!-- Single Fretutes Start -->
                        <div class="col-lg-4">
                            <div class="about-feature-item">
                                <i class="fa fa-car"></i>
                                <h3>ALL BRANDS</h3>
                                <p>Providing a variety of car brands with amazing quality from classic to luxury levels.</p>
                            </div>
                        </div>
                        <!-- Single Fretutes End -->

                        <!-- Single Fretutes Start -->
                        <div class="col-lg-4">
                            <div class="about-feature-item">
                                <i class="fa fa-car"></i>
                                <h3>ALL BRANDS</h3>
                                <p>Providing a variety of car brands with amazing quality from classic to luxury levels.</p>
                            </div>
                        </div>
                        <!-- Single Fretutes End -->
                    </div>
                </div>
                <!-- About Fretutes End -->
            </div>
        </section>
        <!--== About Us Area End ==-->

        <!--== Partner Area Start ==-->
        <div id="partner-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="partner-content-wrap">
                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-1.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->

                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-2.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->

                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-3.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->

                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-4.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->

                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-5.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->

                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-1.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->

                            <!-- Single Partner Start -->
                            <div class="single-partner">
                                <div class="display-table">
                                    <div class="display-table-cell">
                                        <img src="assets/img/partner/partner-logo-4.png" alt="JSOFT">
                                    </div>
                                </div>
                            </div>
                            <!-- Single Partner End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== Partner Area End ==-->

        <!--== Services Area Start ==-->
        <section id="service-area" class="section-padding">
            <div class="container">
                <div class="row">
                    <!-- Section Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2>Our Services</h2>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                           
                        </div>
                    </div>
                    <!-- Section Title End -->
                </div>

                <!-- Service Content Start -->
                <div class="row">
                    <div class="col-lg-11 m-auto text-center">
                        <div class="service-container-wrap">
                            <!-- Single Service Start -->
                            <div class="service-item">
                                <i class="fa fa-taxi"></i>
                                <h3>RENTAL CAR</h3>
                                <p>The services provides customers to book a car from anywhere and at anytime.</p>
                            </div>
                            <!-- Single Service End -->

                            <!-- Single Service Start -->
                            <div class="service-item">
                                <i class="fa fa-cog"></i>
                                <h3>CAR REPAIR</h3>
                                <p>These services proud of high-quality engineers and a strong passion to repair customers cars with the best deal.</p>
                            </div>
                            <!-- Single Service End -->

                            <!-- Single Service Start -->
                            <div class="service-item">
                                <i class="fa fa-map-marker"></i>
                                <h3>TAXI SERVICE</h3>
                                <p> Providing various services to satisfy all customers. In case of theirs demanding.</p>
                            </div>
                            <!-- Single Service End -->

                           

                            <!-- Single Service Start -->
                            <div class="service-item">
                                <i class="fa fa-bath"></i>
                                <h3>car wash</h3>
                                <p>Car washing is an essential function of preventive maintenance. Keeping the exterior of a vehicle clean prevents rust and oxidation and also reduces the occurrence of fine scratches.</p>
                            </div>
                            <!-- Single Service End -->

                            <!-- Single Service Start -->
                            <div class="service-item">
                                <i class="fa fa-phone"></i>
                                <h3>call driver</h3>
                                <p>we are proud of our drivers who have a strong passion and deeply understand customer services. They understand how to satisfy their customers.</p>
                            </div>
                            <!-- Single Service End -->
                        </div>
                    </div>
                </div>
                <!-- Service Content End -->
            </div>
        </section>
        <!--== Services Area End ==-->

        <!--== Fun Fact Area Start ==-->
        <section id="funfact-area" class="overlay section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-11 col-md-12 m-auto">
                        <div class="funfact-content-wrap">
                            <div class="row">
                                <!-- Single FunFact Start -->
                                <div class="col-lg-4 col-md-6">
                                    <div class="single-funfact">
                                        <div class="funfact-icon">
                                            <i class="fa fa-smile-o"></i>
                                        </div>
                                        <div class="funfact-content">
                                            <p><span class="counter">750</span>+</p>
                                            <h4>HAPPY CLIENTS</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single FunFact End -->

                                <!-- Single FunFact Start -->
                                <div class="col-lg-4 col-md-6">
                                    <div class="single-funfact">
                                        <div class="funfact-icon">
                                            <i class="fa fa-car"></i>
                                        </div>
                                        <div class="funfact-content">
                                            <p><span class="counter">250</span>+</p>
                                            <h4>CARS IN STOCK</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single FunFact End -->

                                <!-- Single FunFact Start -->
                                <div class="col-lg-4 col-md-6">
                                    <div class="single-funfact">
                                        <div class="funfact-icon">
                                            <i class="fa fa-bank"></i>
                                        </div>
                                        <div class="funfact-content">
                                            <p><span class="counter">35</span>+</p>
                                            <h4>office in cities</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single FunFact End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== Fun Fact Area End ==-->

        <!--== Choose Car Area Start ==-->
        <section id="choose-car" class="section-padding">
            <div class="container">
                <div class="row">
                    <!-- Section Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2>Choose your Car</h2>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                            
                        </div>
                    </div>
                    <!-- Section Title End -->
                </div>

                <div class="row">
                    <!-- Choose Area Content Start -->
                    <div class="col-lg-12">
                        <div class="choose-ur-cars">
                            <div class="row">
                                <div class="col-lg-3">
                                    <!-- Choose Filtering Menu Start -->
                                    <div class="home2-car-filter">
                                        <a href="#" data-filter="*" class="active">all</a>
                                        <a href="#" data-filter=".con">Conver</a>
                                        <a href="#" data-filter=".hat">Truck</a>
                                        <a href="#" data-filter=".mpv">MPV</a>
                                        <a href="#" data-filter=".sedan">Sedan</a>
                                        <a href="#" data-filter=".suv">SUV</a>
                                    </div>
                                    <!-- Choose Filtering Menu End -->
                                </div>

                                <div class="col-lg-9">
                                    <!-- Choose Cars Content-wrap -->
                                    <div class="row popular-car-gird">

                                        <!-- Single Popular Car Start -->
                                        <div class="col-lg-6 col-md-6 con suv mpv">
                                            <div class="single-popular-car">
                                                <div class="p-car-thumbnails">
                                                    <a class="car-hover" href="assets/img/car/car-1.jpg">
                                                        <img src="assets/img/car/car-1.jpg" alt="JSOFT">
                                                    </a>
                                                </div>

                                                <div class="p-car-content">
                                                    <h3>
                                                        <a href="#">Dodge Ram 1500</a>
                                                        <span class="price"><i class="fa fa-tag"></i> £55/day</span>
                                                    </h3>

                                                    <h5>HATCHBACK</h5>

                                                    <div class="p-car-feature">
                                                        <a href="#">2017</a>
                                                        <a href="#">manual</a>
                                                        <a href="#">AIR CONDITION</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Popular Car End -->

                                        <!-- Single Popular Car Start -->
                                        <div class="col-lg-6 col-md-6 hat sedan">
                                            <div class="single-popular-car">
                                                <div class="p-car-thumbnails">
                                                    <a class="car-hover" href="assets/img/car/car-2.jpg">
                                                        <img src="assets/img/car/car-2.jpg" alt="JSOFT">
                                                    </a>
                                                </div>

                                                <div class="p-car-content">
                                                    <h3>
                                                        <a href="#">Dodge Ram 1500</a>
                                                        <span class="price"><i class="fa fa-tag"></i> £55/day</span>
                                                    </h3>

                                                    <h5>HATCHBACK</h5>

                                                    <div class="p-car-feature">
                                                        <a href="#">2017</a>
                                                        <a href="#">manual</a>
                                                        <a href="#">AIR CONDITION</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Popular Car End -->

                                        <!-- Single Popular Car Start -->
                                        <div class="col-lg-6 col-md-6 suv con mpv">
                                            <div class="single-popular-car">
                                                <div class="p-car-thumbnails">
                                                    <a class="car-hover" href="assets/img/car/car-3.jpg">
                                                        <img src="assets/img/car/car-3.jpg" alt="JSOFT">
                                                    </a>
                                                </div>

                                                <div class="p-car-content">
                                                    <h3>
                                                        <a href="#">Dodge Ram 1500</a>
                                                        <span class="price"><i class="fa fa-tag"></i> £55/day</span>
                                                    </h3>

                                                    <h5>HATCHBACK</h5>

                                                    <div class="p-car-feature">
                                                        <a href="#">2017</a>
                                                        <a href="#">manual</a>
                                                        <a href="#">AIR CONDITION</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Popular Car End -->

                                        <!-- Single Popular Car Start -->
                                        <div class="col-lg-6 col-md-6 con hat">
                                            <div class="single-popular-car">
                                                <div class="p-car-thumbnails">
                                                    <a class="car-hover" href="assets/img/car/car-4.jpg">
                                                        <img src="assets/img/car/car-4.jpg" alt="JSOFT">
                                                    </a>
                                                </div>

                                                <div class="p-car-content">
                                                    <h3>
                                                        <a href="#">Dodge Ram 1500</a>
                                                        <span class="price"><i class="fa fa-tag"></i> £55/day</span>
                                                    </h3>

                                                    <h5>HATCHBACK</h5>

                                                    <div class="p-car-feature">
                                                        <a href="#">2017</a>
                                                        <a href="#">manual</a>
                                                        <a href="#">AIR CONDITION</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Popular Car End -->
                                    </div>
                                    <!-- Choose Cars Content-wrap -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Choose Area Content End -->
                </div>
            </div>
        </section>
        <!--== Choose Car Area End ==-->


        <!--== Team Area Start ==-->
        <section id="team-area" class="section-padding">
            <div class="container">
                <div class="row">
                    <!-- Section Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2>Our Creative Persons</h2>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                            <p>Passion is the key to success.</p>
                        </div>
                    </div>
                    <!-- Section Title End -->
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="team-content">
                            <div class="row">
                                <!-- Team Tab Menu start -->
                                <div class="col-lg-4">
                                    <div class="team-tab-menu">
                                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" id="tab_item_1" data-toggle="tab" href="#team_member_1" role="tab" aria-selected="true">
                                                    <div class="team-mem-icon">
                                                        <img src="assets/img/team/team-mem-2.jpg" alt="JSOFT">
                                                    </div>
                                                    <h5> Ninh Lam</h5>
                                                </a>
                                            </li>
                           
                                        </ul>
                                    </div>
                                </div>
                                <!-- Team Tab Menu End -->

                                <!-- Team Tab Content start -->
                                <div class="col-lg-8">
                                    <div class="tab-content" id="myTabContent">
                                        <!-- Single Team  start -->
                                        <div class="tab-pane fade show active" id="team_member_1" role="tabpanel" aria-labelledby="tab_item_1">
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="team-member-pro-pic">
                                                        <img src="assets/img/team/team-mem-2.jpg" alt="JSOFT">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6 col-md-6">
                                                    <div class="team-member-info text-center">
                                                        <h4> Ninh Lam</h4>
                                                        <h5>Developer</h5>
                                                        <span class="quote-icon"><i class="fa fa-quote-left"></i></span>
                                                        <p> I am currently studying at University of the West of England to obtain a computer science bachelor's degree. Thank Dr. Rakib Ardur who has supported me during the development.</p>
                                                        <div class="team-social-icon">
                                                            <a href="https://www.facebook.com/lamthe.ninh"><i class="fa fa-facebook"></i></a>
                                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                                            <a href="#"><i class="fa fa-linkedin"></i></a>
                                                            <a href="#"><i class="fa fa-pinterest"></i></a>
                                                            <a href="#"><i class="fa fa-dribbble"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Team  End -->

                                    </div>
                                </div>
                                <!-- Team Tab Content End -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== Team Area End ==-->

        <!--== Mobile App Area Start ==-->
        <div id="mobileapp-video-bg"></div>
        <section id="mobile-app-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="mobile-app-content">
                            <h2>SAVE 30% WITH THE APP</h2>
                            <p>Easy &amp; Fast - Book a car in 60 seconds</p>
                            <div class="app-btns">
                                <a href="#"><i class="fa fa-android"></i> Android Store</a>
                                <a href="#"><i class="fa fa-apple"></i> Apple Store</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== Mobile App Area End ==-->

        
       
        <!--== Articles Area End ==-->

        <!--== Footer Area Start ==-->
        <%@include file ="footer.jsp" %>

    </body>

</html>
