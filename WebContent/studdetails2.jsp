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
<style>

body{
background-image:url(image/123.jpg);
background-attachment:fixed;
background-size:100% 100%;
}
table{
background-color:#E5E7E9;

}

</style>



<%String dept=request.getParameter("dept"); %>

<body>

<button type="button" class="btn btn-primary" onclick="history.back()" style="float:right; ">back</button><br><br>

<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-bordered">
    <thead>
      <tr>
           <th>Student ID</th>
        <th>Student Name</th>
        <th>Department</th>
      <th>Connect no</th>
       <th>Assignment Mark</th>
        <th>Project Mark</th>
    
        
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`studentreg` where department='"+dept+"'");
       
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

      <td><a href="hodviewassmark.jsp?id=<%=rs.getString(1)%>" class="btn btn-link">View mark</a></td>
        <td><a href="hodviewprojmark.jsp?id=<%=rs.getString(1)%>" class="btn btn-link">View mark</a></td>
        	
     
        
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
</html>