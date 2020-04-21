<%-- 
    Document   : booking
    Created on : 03-Apr-2020, 14:58:37
    Author     : ninhthelam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>  Reservation Form</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
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

        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
                $("#datepicker1").datepicker();
            });
        </script>
    </head>
    <%
        HttpSession s = request.getSession();
         String email = (String) s.getAttribute("email");

        int id = Integer.parseInt(request.getParameter("car_id")); //get delete_id store in "id" variable
        request.setAttribute("car_id", id);
        Connection cons = DBConnect.getConnection();

        try {
            PreparedStatement ps = null;
            ps = cons.prepareStatement("select * from CAR_DETAILS where id=?"); //sql select query
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
            while (rs.next()) {

    %>

    <body>
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3> Car Reservation Form</h3>
                                <form method="post" action="checkout.jsp">
                                    <div class="name">
                                        <div class="row">
                                            <input type ="hidden" value="<%=request.getAttribute("car_id")%>" name="car_id">
                                            <input type ="text" value="<%=s.getAttribute("email")%>" name="email">

                                            <div class="col-md-6">
                                                <p> Price(£)</p>

                                                <input type="text" value="<%=rs.getInt("price")%>" name ="price" readonly>
                                            </div>
                                            <div class="col-md-6">
                                                <p> Car Number Plates</p>
                                                <input type="text" placeholder="Car Number Plates" value="<%=rs.getString("carnum")%>"  name="carnumber" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">
                                        <p> Model Name</p>
                                        <input type="text" placeholder="Model Name" name="modelname"value="<%=rs.getString("modelname")%>" readonly>
                                    </div>
                                    <div class="">
                                        <p> Pick-Date</p>
                                        <input type="date" id="datepicker" name="pickdate" required>
                                    </div>
                                    <div class="">
                                        <p> Return-Date</p>
                                        <input type="date" id="datepicker1" name="returndate" required>
                                    </div>
                                     <div class="">
                                        <p> Pickup Location</p>

                                        <select class="custom-select" name="location" required>
                                            
                                            <option value="Bristol Airport"> Bristol Airport</option>
                                            <option value="Bristol Coach Station and Bu"> Bristol Coach Station and Bus</option>
                                            <option value="Harbour Shine">Harbour Shine</option>
                                            <option value="Carbot Circut">Carbot Circut</option>
                                            <option value ="Primark"> Primark</option>
                                        </select>

                                    </div>

                                    <div class="log-btn">

                                        <button type="submit"><i class="fa fa-check-square"></i> Checkout</button>
                                    </div>
                                    <div>
                                        <li><a href="staffdashboard.jsp"> Back</a></li>
                                    </div>

                                </form>
                            </div>
                            </body>
                            <%
                                    }

                                    ps.close(); //close statement

                                    cons.close(); //close connection

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                            </html>

