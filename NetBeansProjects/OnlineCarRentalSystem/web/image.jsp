<%-- 
    Document   : image
    Created on : 02-Apr-2020, 16:49:42
    Author     : ninhthelam
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <table border="1">
        <tr>
            <th>ID</th>
            <th> Brand</th>
            <th>Image</th>
        </tr>
                <%
                    String brand = request.getParameter("cartype");
                    try {
                        Connection cons = DBConnect.getConnection();
                        Statement stmt = cons.createStatement();
                        String strQuery = "select * from CAR_DETAILS where brand='"+brand+"'";
                        ResultSet rs = stmt.executeQuery(strQuery);
                        while (rs.next()) {
                %>
        <tr>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("brand") %></td>
            <td>
                <img src="getImage.jsp?imgid=<%=rs.getInt("id")%>" width="100" height="100">
                </a></td>
        </tr>
        <%
                }
                rs.close();
                cons.close();
                stmt.close();
            } catch (Exception e) {
                e.getMessage();
            }
        %>
    </table>
</html>
