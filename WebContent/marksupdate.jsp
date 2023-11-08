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

<body>
<center>
<a href="stafmain.jsp"><button type="button" class="btn btn-primary">back</button></a>
</center>
<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>STUDENT ID</th>
        <th>QUESTION </th>
        <th>TEST DESC</th>
         <th>SUBJECT</th>
        <th>ANSWER PAPER</th>
 
        <th>SUBMIT</th>
      
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`testpaper`  ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>
     
      
      <td><a href="entermark.jsp?id=<%=rs.getString(1) %>&&stid=<%=rs.getString(2)%>">UPDATE MARK</td>
      
       
     
        
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>