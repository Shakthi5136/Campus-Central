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
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
</head>
<% String staf=request.getParameter("staffid");
String stafname=request.getParameter("stafname");%>
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
        <th>Allocate</th>
        
      </tr>
    </thead>
     <%
Connection con;
       
       
       con=dbcon.create(); 
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`studentreg` where status='Activate' ");
       
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

      
        	 
        <td><a href="allocated.jsp?stafname=<%=stafname%>&&stafid=<%=staf%>&&studentid=<%=rs.getString(1)%>"><button onclick="myFunction()">Allocate</button></a>
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</div>
</body>
<script type="text/javascript">
 
function myFunction() {
	  alert("Student Allocat  Successfully !!!    ");
	}
</script>
</html>