<%-- 
    Document   : delete
    Created on : 29-Mar-2020, 17:01:00
    Author     : ninhthelam
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("delete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("delete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from CAR_DETAILS where id=? "); //sql delete query
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
if(request.getParameter("bookingdelete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("bookingdelete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from BOOKING_LIST where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("staffdashboard.jsp"); //after delete success forward index.jsp page
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
if(request.getParameter("accountdelete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("accountdelete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from EMPLOYEES where id=? "); //sql delete query
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
    if(request.getParameter("replydelete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("replydelete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from FEEDBACK where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("staffmanageFB.jsp"); //after delete success forward index.jsp page
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
if(request.getParameter("c_bookingdelete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("bookingdelete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from BOOKING_LIST where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("home.jsp"); //after delete success forward index.jsp page
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
if(request.getParameter("customerdelete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("customerdelete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from MEMBERS where id=? "); //sql delete query
            ps.setInt(1,id);
            ps.executeUpdate(); //execute query

            RequestDispatcher rd=request.getRequestDispatcher("amdashboard.jsp"); //after delete success forward index.jsp page
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
    if(request.getParameter("driverdelete_id")!=null) //get delete_id from index.jsp page with href link and check not null after continue
    {
        int id=Integer.parseInt(request.getParameter("driverdelete_id")); //get delete_id store in "id" variable
        
        Connection cons = DBConnect.getConnection();
        
        try
        {
            
            
            PreparedStatement ps = null; //create statement
            
            ps=cons.prepareStatement("delete from DRIVER where id=? "); //sql delete query
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
