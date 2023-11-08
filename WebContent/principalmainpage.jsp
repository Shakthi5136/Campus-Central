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
<title>ADD STAFF PAGE</title>
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 10px;
  overflow: hidden;
  background-color: #133027ba;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-family: monospace;
}

li a:hover:not(.active) {
  background-color: red;
}

.active {
  background-color: #4CAF50;
}

body {
     background: url(image/14.jpeg)no-repeat 0px 0px;

    background-size: 100% 100%;
    min-height: 795px;
	position:relative;
}
h2{
  text-shadow: 2px 2px 5px green;
  font-style: italic;
  font-family: cursive;
  color:yellow;
   font-size: 30px;
}
span{
color:orange;
}

/* img{
padding-right:20%;
} */

.notification {
  background-color: #555;
  color: white;
  text-decoration: none;
  padding: 15px 26px;
  position: relative;
  display: inline-block;
  border-radius: 4px;
}

.notification:hover {
  background: white;
}

.notification .badge {
  position: absolute;
  top: -10px;
  right: -10px;
  padding: 5px 10px;
  border-radius: 70%;
  background: yellow;
  color: black;
}

</style>


</head>

<%String name=session.getAttribute("User").toString(); %>
<body>
 <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `college`.`principal` where depart='"+name+"' and status='Not View'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
        
    	   int count=rs.getInt(1);
    	 
   
    	
    
    	  
    	   
       %>

<ul>   <li><b><a href="index.jsp">HOME</a></b></li>

        <li><b><a href="pricipalupload.jsp">SHARE CIRCULAR </a></b></li>
         <li><b><a href="princview.jsp" class="notification">VIEW CIRCULAR<span class="badge"><%=count%></span></a></b></li>
       
         <li><b><a href="deptstaffs.jsp">DEPARTMENT</a></b></li>
                <li><b><a href="uploadedfileview.jsp">FILE TRACK</a></b></li>
</ul>


<%} %>
</body>
</html>