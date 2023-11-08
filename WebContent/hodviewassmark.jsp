<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css1/bootstrap.min.css">
</head>

 <STYLE>
 body{
 
 background-image:url(image/tab.jpg);
 background-position:fixed;
 background-size:cover;
 }
 
 
 
 table{
 background-color:#C39BD3;
 
 }
 
 
 </STYLE>
<%String stid=request.getParameter("id");%>
<body>

<button type="button" class="btn btn-primary" onclick="history.back()" style="float:right;">back</button>



<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-SUCCCESS">
    <thead>
      <tr>
     
        <th>STAFF ID</th>
        <th>SUBJECT</th>
         <th>QUESTION</th>
        <th>MARK</th>
        <th>TOTAL MARK</th>
        
       
      
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`testpaper` where studid='"+stid+"'  ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(9)%></td>
         
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>