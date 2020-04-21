<%-- 
    Document   : caredit
    Created on : 29-Mar-2020, 17:09:48
    Author     : ninhthelam
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CarDAOImpl"%>
<%@page import="Models.Car"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=== Favicon ===-->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

        <title>Customer details</title>

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

    <%
        HttpSession s = request.getSession();
        String email = (String) s.getAttribute("email");

        //int id = Integer.parseInt(request.getParameter("edit_id")); //get delete_id store in "id" variable
        Connection cons = DBConnect.getConnection();

        try {
            PreparedStatement ps = null;
            ps = cons.prepareStatement("select MEMBERS.dor, MEMBERS.fullname,MEMBERS.email,MEMBERS.password,MEMBERS.phone,PAYMENT.carnum,PAYMENT.expiredate,PAYMENT.totalpay from MEMBERS INNER JOIN PAYMENT ON MEMBERS.email= PAYMENT.name where MEMBERS.email ='" + email + "' "); //sql select query
            //ps.setInt(1, id);
            //ps.setString(3, email);
            ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
            while (rs.next()) {

    %>

    <body>
        <%@include file= "header.jsp"%>
       
        <section id="page-title-area" class="section-padding overlay">
            <div class="container">
                <div class="row">
                    <!-- Page Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">

                            <span class="title-line"><i class="fa fa-car"></i></span>
                            <p>Make you feel safe and comfortable.</p>
                        </div>
                    </div>
                    <!-- Page Title End -->
                </div>
            </div>
        </section>
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3> Profile Details</h3>
                                <form  action="MemberModification" method="POST">
                                    <div class="name">
                                        <input type="hidden"  name="dor"value="<%=rs.getString("dor")%>" >
                                        <input type="hidden"  name="totalpay"value="<%=rs.getInt("totalpay")%>" >
                                        <div class="row">
                                            <div class="col-md-6">
                                                <p> Full name</p>
                                                <input type="text"  name="fullname"value="<%=rs.getString("fullname")%>" required>
                                            </div>
                                            <div class="col-md-6">
                                                <p> Email</p>
                                                <input type="text"  name="email"value="<%=rs.getString("email")%>" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="">
                                        <p> Password</p>
                                        <input type="text" name="password" value="<%=rs.getString("password")%>" required>
                                    </div>
                                    <div class="">
                                        <p> Phone</p>
                                        <input type="text"  name="phone" value="<%=rs.getInt("phone")%>"required>
                                    </div>
                                    <div class="">
                                        <p> Car Number</p>
                                        <input type="text" name="carnum"value="<%=rs.getInt("carnum")%>" required>
                                    </div>
                                    <div class="">
                                        <p> Expire Date</p>
                                        <input type="text" name="expiredate" value="<%=rs.getString("expiredate")%>" required>
                                    </div>

                                    <div class="log-btn">

                                        <button type="submit"><i class="fa fa-check-square"></i> Edit</button>
                                    </div>
                                    <div>
                                        <li><a href="home.jsp"> Back</a></li>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <%@include file = "footer.jsp" %>

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
