<%-- 
    Document   : edit
    Created on : 31-Mar-2020, 16:54:33
    Author     : ninhthelam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=== Favicon ===-->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

        <title>Edit page</title>

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

        int id = Integer.parseInt(request.getParameter("amend_id")); //get delete_id store in "id" variable

        Connection cons = DBConnect.getConnection();

        try {
            PreparedStatement ps = null;
            ps = cons.prepareStatement("select * from EMPLOYEES where id =?"); //sql select query
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
                                <h3> Employee Details</h3>
                                <form method="POST" action="EmployeeEdit">
                                    
                                     <div class="">
                                         <p> Full name</p>
                                         <input type="text" placeholder=" Full name"  name="fullname"  value="<%=rs.getString("name") %>"required>
                                    </div>
                                    <div class="">
                                         <p> Password</p>
                                        <input type="text" placeholder="Password"  name="password" value="<%=rs.getString("password")%>"required>
                                    </div>
                                    <div class="">
                                         <p> Phone Number</p>
                                        <input type="text" placeholder="Phone Number " name="phone"value="<%=rs.getInt("phone")%>" required>
                                    </div>
                                    <div class="">
                                         <p> Number Insurance</p>
                                        <input type="text" placeholder="Number Insurance " name="ni"value="<%=rs.getInt("ni")%>" required>
                                    </div>
                                    <div class="">
                                         <p> Status</p>
                                        <input type="text" name="status" value="<%=rs.getString("status")%>" required>
                                    </div>
                                    
                                    <div class="log-btn">
                                   
                                        <button type="submit"><i class="fa fa-check-square"></i> Edit</button>
                                    </div>
                                    <div>
                                        <li><a href="amdashboard.jsp"> Back</a></li>
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
