<%-- 
    Document   : accountmanagement
    Created on : 31-Mar-2020, 14:23:23
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

        <title> Account management</title>
        <h3 style="text-align: center">  Employees list </h3>

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
    <li><a href="amdashboard.jsp"> Back</a></li>
</div>

<body>

    <table>
        

        <tr>
            <th> ID</th>
            <th>  Full Name</th>
            <th>  Password</th>
            <th>  Phone</th>
            <th> Number Insurance </th>
            <th> Title</th>
                           
            <th> Approve</th>
            <th> Remove</th>
            <th> Amend</th>
        </tr>

        <%
            Connection cons = DBConnect.getConnection();

            try {
                PreparedStatement ps = null;
                ps = cons.prepareStatement("select * from EMPLOYEES"); //sql select query
                ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
                while (rs.next()) {

        %>
        <tr>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("password") %></td>
            <td><%=rs.getInt("phone")%></td>
            <td><%=rs.getInt("ni")%></td>
            <td><%=rs.getString("status")%></td>

            <td><a href="approve.jsp?account_id=<%=rs.getInt("id")%>">Approve</a></td>
            <td><a href="delete.jsp?accountdelete_id=<%=rs.getInt("id")%>">Delete</a></td>
            <td><a href="edit.jsp?amend_id=<%=rs.getInt("id")%>">Amend</a></td>

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
