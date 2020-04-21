<%-- 
    Document   : addCar
    Created on : 28-Mar-2020, 13:33:27
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

        <title>Add car details</title>

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
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3> Car Details</h3>
                                <form method="post" action="uploadServlet" enctype="multipart/form-data">
                                    <div class="name">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="text" placeholder="Price" pattern="[0-9]+" name="price" required="">
                                            </div>
                                            <div class="col-md-6">
                                                <input type="text" placeholder="Color" name="color" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">
                                        <input type="text" placeholder="Car Number Plates"  name="carnumber" required>
                                    </div>
                                    <div class="">
                                        <input type="text" placeholder="Brand"  name="brand" required>
                                    </div>
                                    <div class="">
                                        <input type="text" placeholder="Model Name" name="modelname" required>
                                    </div>
                                    <div class="">
                                        <input type="text" name="numberofpass" placeholder="Number Of Pass" pattern="[0-9]+" title="Number only" required>
                                    </div>
                                    <div class="">
                                        <input type="text" name="description" placeholder=" Description" required>
                                    </div>
                                    <div class="">
                                        <input type="file" name="fileimage" placeholder=" Upload Image">
                                    </div>
                                    <div class="log-btn">
                                        <input type="hidden" name="action" value="add" />
                                        <button type="submit"><i class="fa fa-check-square"></i> Add</button>
                                    </div>
                                    <div>
                                        <li><a href="staffdashboard.jsp"> Back</a></li>
                                    </div>
                                    
                                </form>
                            </div>
    </body>
</html>
