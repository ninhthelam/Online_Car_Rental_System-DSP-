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
    <%

        int id = Integer.parseInt(request.getParameter("edit_id")); //get delete_id store in "id" variable

        Connection cons = DBConnect.getConnection();

        try {
            PreparedStatement ps = null;
            ps = cons.prepareStatement("select * from CAR_DETAILS where id =?"); //sql select query
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
                                <h3> Car Details</h3>
                                <form method="post" action="editServlet" enctype="multipart/form-data">
                                    <div class="name">
                                        <div class="row">
                           
                                            <div class="col-md-6">
                                                <p> Price</p>
                                               
                                                <input type="text" placeholder="Price" pattern="[0-9]+" name="price" value="<%=rs.getInt("price")%>" required="">
                                            </div>
                                            <div class="col-md-6">
                                                 <p> Colour</p>
                                                <input type="text" placeholder="Color" name="color"value="<%=rs.getString("color")%>" required>
                                            </div>
                                        </div>
                                    </div>
                                     <div class="">
                                         <p> Car Number Plates</p>
                                        <input type="text" placeholder="Car Number Plates"  name="carnumber" required>
                                    </div>
                                    <div class="">
                                         <p> Brand</p>
                                        <input type="text" placeholder="Brand"  name="brand" value="<%=rs.getString("brand")%>"required>
                                    </div>
                                    <div class="">
                                         <p> Model Name</p>
                                        <input type="text" placeholder="Model Name" name="modelname"value="<%=rs.getString("modelname")%>" required>
                                    </div>
                                    <div class="">
                                         <p> Number Of Pass</p>
                                        <input type="text" name="numberofpass" placeholder="Number Of Pass" pattern="[0-9]+" title="Number only"value="<%=rs.getInt("numberofpass")%>" required>
                                    </div>
                                    <div class="">
                                         <p> Description</p>
                                        <input type="text" name="description" placeholder=" Description" value="<%=rs.getString("description")%>" required>
                                    </div>
                                    <div class="">
                                         <p> Image</p>
                                        <input type="file" name="fileimage" value="<%=rs.getBlob("image")%>" required>
                                    </div>
                                    <div class="log-btn">
                                        <input type="hidden" name="action" value="edit" />
                                        <button type="submit"><i class="fa fa-check-square"></i> Edit</button>
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
