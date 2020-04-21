<%-- 
    Document   : getImage
    Created on : 02-Apr-2020, 16:35:33
    Author     : ninhthelam
--%>


    <%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
  int id =  Integer.parseInt(request.getParameter("imgid"));
  String cartype = request.getParameter("cartype");
  try{      
    Connection cons = DBConnect.getConnection();
    Statement stmt = cons.createStatement();
    //String strQuery = "select image from IMAGE where id="+id;
    String strQuery = "select image from CAR_DETAILS where id="+id;
    ResultSet rs = stmt.executeQuery(strQuery);

    String imgLen="";
    if(rs.next()){
      imgLen = rs.getString(1);
       }  
    rs = stmt.executeQuery(strQuery);
    if(rs.next()){
      int len = imgLen.length();
      byte [] rb = new byte[len];
      InputStream readImg = rs.getBinaryStream(1);
      int index=readImg.read(rb, 0, len);  
      stmt.close();
      response.reset();
      response.getOutputStream().write(rb,0,len); 
      response.getOutputStream().flush();        
    }
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>