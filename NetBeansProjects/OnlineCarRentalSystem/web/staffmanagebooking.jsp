<%-- 
    Document   : staffmanagebooking
    Created on : 30-Mar-2020, 14:37:32
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

        <title> Booking management</title>
        <h3 style="text-align: center">  Booking list </h3>

        <style>
            table, td, th {
                border: 1px solid black;
            }

            table {
                border-collapse: collapse;
                width: 100%;
            }

            th {
                height: 50px;
            }
        </style>
    </head>


</head>
<div>
    <li><a href="staffdashboard.jsp"> Back</a></li>
</div>

<body>

    <table>
        

        <tr>
            <th> ID</th>
            <th>  Customer Email</th>
            <th>  Car ID</th>
            <th> Start day</th>
            <th> Return day </th>
            <th> Pick up location</th>
            <th> Status</th> 
            <th> Employee Approve</th>
            <th> Approve</th>
            <th> Cancellation</th>
        </tr>

        <%
            Connection cons = DBConnect.getConnection();

            try {
                PreparedStatement ps = null;
                ps = cons.prepareStatement("select * from BOOKING_LIST"); //sql select query
                ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getInt("car_id")%></td>
            <td><%=rs.getDate("startday")%></td>
            <td><%=rs.getDate("returnday")%></td>
            <td><%=rs.getString("location")%></td>
            <td><%=rs.getString("status")%></td>
            <td><%=rs.getInt("E_id") %></td>

            <td><a href="approve.jsp?booking_id=<%=rs.getInt("id")%>">Approve</a></td>
            <td><a href="delete.jsp?bookingdelete_id=<%=rs.getInt("id")%>">Delete</a></td>

        </tr>
        <%
                }

                ps.close(); //close statement

                cons.close(); //close connection

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>



    </table>

</html>
