<%-- 
    Document   : carsearch
    Created on : 27-Mar-2020, 14:10:31
    Author     : ninhthelam
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
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

        <title>Online Car Rental System Car Information</title>

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
        <style>
            table {
                border-collapse: collapse;
            }

            table, td, th {
                border: none;


            }
            th {
                height: 40px;
                color: black;
            }
            td{
                color: green;
            }
            a.link{
                color: white;
                padding: 14px 25px;
                display: inline-block;
                background-color: blue

            }

        </style>



    </head>

    <body>

        <%@include file= "header.jsp"%>

        <!--== Page Title Area Start ==-->
        <section id="page-title-area" class="section-padding overlay">
            <div class="container">
                <div class="row">
                    <!-- Page Title Start -->
                    <div class="col-lg-12">
                        <div class="section-title  text-center">
                            <h2>Reservation details</h2>
                            <span class="title-line"><i class="fa fa-car"></i></span>
                        </div>
                    </div>
                    <!-- Page Title End -->
                </div>
            </div>
        </section>
        <!--== Page Title Area End ==-->

        <table>
            <tr>       
               
                <th> Booking Details</th>

    </tr>
    <%
        {

            HttpSession s = request.getSession();
            String email = (String) s.getAttribute("email");
            try {
                Connection cons = DBConnect.getConnection();
                Statement stmt = cons.createStatement();
                String strQuery = "select * from BOOKING_LIST where name='"+email+"'";
                ResultSet rs = stmt.executeQuery(strQuery);
                while (rs.next()) {
                    


    %>
    <tr>
       
        
        <td> Date : Start day: <%=rs.getString("startday")%> , return day: <%=rs.getString("returnday")%>
            <br>
            </br> &rArr; Pick up location <%=rs.getString("location")%>
            <br></br>
            
            <br>
            <a class="link" href="home.jsp">Go back </a>
            <a class="link" href="delete.jsp?c_bookingdelete_id=<%=rs.getInt("id")%>">Cancel booking </a>
            


        </td>

    </tr>
    <%
                }
                rs.close();
                cons.close();
                stmt.close();
            } catch (Exception e) {
                e.getMessage();
            }
        }

    %>
</table>






<!--== Display serach result Content End ==-->

<!--== Footer Area Start ==-->
<%@include file = "footer.jsp" %>
</body>
</html>
