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
</head>
<style>
body{
background-image:url(image/20382877.jpg);
background-attachment:fixed;
background-size:100% 100%;
}

</style>
<body><center>
<div class="card mb-2" style="width: 18rem;background-color:#AF7AC5">
  <div class="card-body">
    <h5 class="card-title">CSE</h5>
    <h6 class="card-subtitle mb-2 text-muted">Computer Seince Engineering</h6>
    <p class="card-text"></p>
    <a href="stafflist.jsp?dept=CSE" class="card-link" name="cse" value="CSE">View Staffs</a>
    <a href="studdetails2.jsp?dept=CSE" class="card-link" name="cse" value="CSE">View Students</a>
    
    
  </div>
</div>

<div class="card mb-2" style="width: 18rem;background-color:#EC7063">
  <div class="card-body">
    <h5 class="card-title">IT</h5>
    <h6 class="card-subtitle mb-2 text-muted">Information Technology</h6>
    <p class="card-text"></p>
    <a href="stafflist.jsp?dept=IT" class="card-link" >View Staffs</a>
    <a href="studdetails2.jsp?dept=IT" class="card-link" name="cse" value="CSE">View Students</a>
  </div>
</div>

<div class="card" style="width: 18rem;background-color:#5499C7">
  <div class="card-body">
    <h5 class="card-title">EEE</h5>
    <h6 class="card-subtitle mb-2 text-muted">Electric and Electronic Engineering</h6>
    <p class="card-text"></p>
    <a href="stafflist.jsp?dept=EEE" class="card-link">View Staffs</a>
    <a href="studdetails2.jsp?dept=EEE" class="card-link" name="cse" value="CSE">View Students</a>
    
  </div>
</div><br>


<div class="card" style="width: 18rem;background-color:#48C9B0">
  <div class="card-body">
    <h5 class="card-title">ECE</h5>
    <h6 class="card-subtitle mb-2 text-muted">Electronic Communication Engineering</h6>
    <p class="card-text"></p>
    <a href="stafflist.jsp?dept=ECE" class="card-link">View Staffs</a>
    <a href="studdetails2.jsp?dept=ECE" class="card-link" name="cse" value="CSE">View Students</a>
    
  </div>
</div><br>


<div class="card" style="width: 18rem;background-color:#F4D03F ">
  <div class="card-body">
    <h5 class="card-title">CIVIL</h5>
    <h6 class="card-subtitle mb-2 text-muted">Civil Engineering</h6>
    <p class="card-text"></p>
    <a href="stafflist.jsp?dept=CIVIL" class="card-link">View Staffs</a>
    <a href="studdetails2.jsp?dept=CIVIL" class="card-link" name="cse" value="CSE">View Students</a>
    
  </div>
</div><br>


<div class="card" style="width: 18rem;background-color:#99A3A4">
  <div class="card-body">
    <h5 class="card-title">MECH</h5>
    <h6 class="card-subtitle mb-2 text-muted">Mechanical Engineering</h6>
    <p class="card-text"></p>
    <a href="stafflist.jsp?dept=MECH" class="card-link">View Staffs</a>
    <a href="studdetails2.jsp?dept=MECH" class="card-link" name="cse" value="CSE">View Students</a>
    
  </div>
</div></center>
</body>
</html>