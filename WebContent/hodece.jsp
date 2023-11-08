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
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<% String hod=session.getAttribute("dept").toString(); %>
<style>
body {
   margin: 0;
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   background-image:url("image/10.jpeg");
   background-size:cover;
   
}
nav {
   margin: 0;
   padding: 0;
   width: 250px;
   background-color: #2fbfa163;
   position: fixed;
   height: 100%;
   overflow: auto;
}
nav a {
   display: block;
   color: rgb(255, 255, 255);
   font-weight: bolder;
   font-size: 20px;
   padding: 16px;
   text-decoration: none;
   font-family: "Times New Roman", Times, serif;
}
nav a.selected {
      background-color: rgb(235 231 228);
    color: rgb(56 5 5 / 78%);
}
nav a:hover:not(.selected) {
   background-color: white;
   color: #2f77e4;
}
div.content {
   margin-left: 200px;
   padding: 1px 16px;
   height: 1000px;
}
@media screen and (max-width: 700px) {
nav {
   width: 100%;
   height: auto;
   position: relative;
}
nav a {float: left;}
div.content {margin-left: 0;}
}h1{
margin: 180px 8px 27px 54px;
color:white;
}

.notification {
  background-color: #F8C471;
  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 2px;
}

.notification:hover {
  background: red;
}

.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 50%;
  background: red;
  color: white;
}

</style>
</head>
<body>

 <%
       
       Connection con;
       
       
       con=dbcon.create();
      
           PreparedStatement p=con.prepareStatement("SELECT count(*) FROM `college`.`principal` where hodece='' ");
         
       ResultSet rs=p.executeQuery();
       
       while(rs.next())
       {
        
    	   int count=rs.getInt(1);
    	 
   
    	
    
    	  
    	   
       %>

<nav class="sideBar">
<a class="selected" href="#" ><%=hod%></a>
<a href="stafflistforhod.jsp">STAFF LIST</a>
<a href="staffmain.jsp">ADD STAFF</a>
<a href="studentdetail.jsp">STUDENT</a>
<a href="cirview.jsp" class="notification">CIRCULAR<span class="badge"><%=count%></span></a>
<a href="#">PRINCIPAL</a>
 
 <a href="index.jsp">LOGOUT</a>
</nav>
<div class="content">
<center>
<h1>WELCOME</h1>
</center>

</div>
<%} %>

</body>
</html>
