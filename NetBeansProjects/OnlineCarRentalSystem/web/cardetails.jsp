<%-- 
    Document   : cardetails
    Created on : 29-Mar-2020, 13:44:32
    Author     : ninhthelam
--%>

<%@page import="java.sql.Blob"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao.CarDAOImpl"%>
<%@page import="Models.Car"%>
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
    <h3 style="text-align: center">  Car information </h3>

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
    <div>
        <li><a href="staffdashboard.jsp"> Back</a></li>
    </div>
    

    <body>

        <table>
           

            <tr>
                <th> ID</th>
                <th>  Car Number Plates</th>
                <th> Brand</th>
                <th> Colour</th>
                <th> Price </th>
                <th> Model Name</th>
                <th> Number Of Pass</th>
                <th> Description</th>
                <th> Edit</th>
                <th> Delete</th>
            </tr>

            <%
                Connection cons = DBConnect.getConnection();

                try {
                    PreparedStatement ps = null;
                    ps = cons.prepareStatement("select * from CAR_DETAILS"); //sql select query
                    ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
                    while (rs.next()) {

            %>
            <tr>
                <td><%=rs.getInt("id")%></td>
                <td><%=rs.getString("carnum")%></td>
                <td><%=rs.getString("brand")%></td>
                <td><%=rs.getString("color")%></td>
                <td><%=rs.getInt("price")%></td>
                <td><%=rs.getString("modelname")%></td>
                <td><%=rs.getInt("numberofpass")%></td>
                <td><%=rs.getString("description")%></td>

                <td><a href="caredit.jsp?edit_id=<%=rs.getInt("id")%>">Edit</a></td>
                <td><a href="delete.jsp?delete_id=<%=rs.getInt("id")%>">Delete</a></td>

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






    </body>
</html>
