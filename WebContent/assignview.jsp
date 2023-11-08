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
<%String dept=session.getAttribute("stdept").toString(); %>
<body>
<center>
<button type="button" class="btn btn-primary" onclick="history.back()">back</button>
</center>
<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>ID</th>
        <th>STAFF ID</th>
        <th>TEST</th>
         <th>SUBJECT</th>
        <th>FILE</th>
        <th>View</th>
        <th>Upload</th>
      
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`assignment` where status='fortest'   ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
      
      <td><a href="download.jsp?id=<%=rs.getString(1) %>&&filename=<%=rs.getString(5)%>">Downlaod</td>
      <td><a href="assignupload.jsp?id=<%=rs.getString(1)%>&&staffid=<%=rs.getString(2)%>&&assign=<%=rs.getString(3)%>&&sub=<%=rs.getString(4)%>&&ques=<%=rs.getString(5) %>">Upload</td>
       
     
        
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>