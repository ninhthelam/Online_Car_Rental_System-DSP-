<%-- 
    Document   : staffmanageFAQs
    Created on : 30-Mar-2020, 15:18:53
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

        <title> FAQs</title>
        <h3>  Feedback list </h3>

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
            <th>  Customer ID</th>
            <th>  Content</th>
            <th> Date</th>
            <th> Status </th>               
            <th> Reply</th>
            <th> Delete</th>
        </tr>

        <%
            Connection cons = DBConnect.getConnection();

            try {
                PreparedStatement ps = null;
                ps = cons.prepareStatement("select * from FEEDBACK where status='Unreply'"); //sql select query
                ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getInt("customer_id")%></td>
            <td><%=rs.getString("content")%></td>
            <td><%=rs.getDate("dof")%></td>
            <td><%=rs.getString("status")%></td>
            <td><a href="staffreply.jsp?reply_id=<%=rs.getInt("id")%>">Reply</a></td>
            <td><a href="delete.jsp?replydelete_id=<%=rs.getInt("id")%>">Delete</a></td>

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
