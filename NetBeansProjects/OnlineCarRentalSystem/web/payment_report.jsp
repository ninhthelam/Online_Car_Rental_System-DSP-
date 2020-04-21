<%-- 
    Document   : payment_report
    Created on : 08-Apr-2020, 23:53:38
    Author     : ninhthelam
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    Connection cons = DBConnect.getConnection();

    try {
        PrintWriter pw = new PrintWriter(new File("/Users/ninhthelam/Documents/Payment_reprt/payment.csv"));
        StringBuilder sb = new StringBuilder();
        PreparedStatement ps = null;
        ps = cons.prepareStatement("select name,sum(totalpay) as totalpay from PAYMENT group by name"); //sql select query
        ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
        while (rs.next()) {
            sb.append(rs.getString("name"));
            sb.append(",");
            sb.append(rs.getInt("totalpay"));
          
            sb.append("\r\n");

        }
        pw.write(sb.toString());
        pw.close();
        System.out.println("finished");

        ps.close(); //close statement

        cons.close(); //close connection
        RequestDispatcher rd=request.getRequestDispatcher("amdashboard.jsp"); //after delete success forward index.jsp page
            rd.forward(request, response); 

    } catch (Exception e) {
        e.printStackTrace();
    }


%>