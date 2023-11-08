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
<%String name=session.getAttribute("user").toString(); %>
<body>

<button type="button" class="btn btn-primary" onclick="history.back()" style="float:right;">back</button><br><br>

<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-bordered">
    <thead>
      <tr>
           
        <th>Department</th>
        <th>Circular</th>

        <th>View</th>
          <th>Share</th>
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal` where depart='Hod' or depart='Student' or depart='Staff' /* and status='Not View' */");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
  
    	 
   
    	
    
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>


      
        	  <td><a href="view.jsp?file=<%=rs.getString(3)%>&&id=<%=rs.getString(1)%>">View</a></td>
        	  <td><a href="hodcircular.jsp?id=<%=rs.getString(1)%>&&file=<%=rs.getString(3)%>">Share</a></td>  
     
        
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>