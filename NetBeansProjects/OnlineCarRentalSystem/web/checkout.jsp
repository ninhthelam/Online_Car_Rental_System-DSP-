<%-- 
    Document   : checkout
    Created on : 03-Apr-2020, 22:38:59
    Author     : ninhthelam
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
        String date1 =request.getParameter("pickdate");
        int car_id = Integer.parseInt(request.getParameter("car_id"));
        request.setAttribute("car_id", car_id);
        String location = request.getParameter("location");
        request.setAttribute("location", location);
        String pickdate = request.getParameter("pickdate");
        request.setAttribute("pickdate", pickdate);
        String returndate = request.getParameter("returndate");
        request.setAttribute("returndate", returndate);
        String date2 =request.getParameter("returndate");
        
        int price = Integer.parseInt(request.getParameter("price"));

        SimpleDateFormat dateformat = new SimpleDateFormat ("E    yyyy.MM.dd"); //SDF to display output with day of week

        Date displaydate1=new Date(date1); //Turning the inputed date from string
                                       //to date format to be used for the output
        Date displaydate2=new Date(date2);

        int differenceInDays = (int) ((displaydate2.getTime() - displaydate1.getTime())/(1000*60*60*24));//common method to calculate number of days


        int total = differenceInDays * price;
        request.setAttribute("total", total);
        request.setAttribute("day",differenceInDays);
        
    %>

    <body>
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3> Payment Form</h3>
                                <form method="post" action="ReservationCar">
                                    <div class="name">
                                        <div class="row">
                                            <input type ="hidden" value="<%=request.getAttribute("car_id")%>" name="car_id">
                                            <input type ="hidden" value="<%=s.getAttribute("email")%>" name="email">
                                            <input type ="hidden" value="<%=request.getAttribute("location")%>" name="location">
                                            <input type ="hidden" value="<%=request.getAttribute("pickdate")%>" name="pickdate">
                                            <input type ="hidden" value="<%=request.getAttribute("returndate")%>" name="returndate">




                                            <div class="col-md-6">
                                                <p> Day period</p>

                                                <input type="text" value="<%=request.getAttribute("day")%>" name ="day" readonly>
                                            </div>
                                            <div class="col-md-6">
                                                <p> Total cost £</p>
                                                <input type="text" value="<%=request.getAttribute("total")%>"  name="total" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">
                                        <p> Car Number</p>
                                        <input type="text" placeholder="Car_Number" name="carnum"value="" required>
                                    </div>
                                    <div class="">
                                        <p> Expire Day</p>
                                        <input type="Date" placeholder="MM/YYYY" name="expireday" value="" required>
                                    </div>
                                   

                                    <div class="log-btn">
                                        
                                        <button type="submit"><i class="fa fa-check-square"></i> Finish</button>
                                    </div>
                                    <div>
                                        <li><a href="carsearch.jsp"> Back</a></li>
                                    </div>

                                </form>
                            </div>
                            </body>
                           
                            
                            </html>

