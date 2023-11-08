<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@page import="dbcon.dbcon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>

.myDiv2 {
  font-size:25px;  
  font-style: Segoe UI Semibold;
font-weight: bold;
color:blue; 
}

table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: orange;
}

.backtag{
float:right;
margin-right:50px;
font-size:30px;
}

</style>


</head>
<body>

<div class="backtag">
<button onclick="history.back()" class="btn btn-info">Back</button>
</div>

<br>
<center>
<div class="myDiv2">
Marks
</div>
  
<br>
<div>
<center><h3>Assignment Mark</h3></center>
<iframe src="assignmentmark.jsp" height="550" width="650"></iframe>
</div>
<div>
<center><h3>Project Mark</h3></center>
<iframe src="projectmark.jsp" height="550" width="650"></iframe>
</div>
</center>


</body>
</html>