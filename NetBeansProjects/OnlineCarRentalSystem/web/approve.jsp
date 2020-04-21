<%-- 
    Document   : bookingapprove
    Created on : 30-Mar-2020, 14:51:00
    Author     : ninhthelam
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("booking_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("booking_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("update Booking_LIST set status= 'Approved' where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("cardetails.jsp"); //after delete success forward index.jsp page
            rd.forward(request, response); 
            
            ps.close(); //close statement
            
            cons.close(); //close connection   
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
%>
<%
    if(request.getParameter("account_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("account_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("update EMPLOYEES set status= 'ST' where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("accountmanagement.jsp"); //after delete success forward index.jsp page
            rd.forward(request, response); 
            
            ps.close(); //close statement
            
            cons.close(); //close connection   
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
%>
<%
    if(request.getParameter("driver_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("driver_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("update DRIVER set status= 'Approved' where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("am_driveraccount.jsp"); //after delete success forward index.jsp page
            rd.forward(request, response); 
            
            ps.close(); //close statement
            
            cons.close(); //close connection   
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
    }
%>