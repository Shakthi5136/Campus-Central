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
<% String stid=session.getAttribute("stid").toString(); %>
<% String stdept=session.getAttribute("stdept").toString(); System.out.println(stdept+"hi ");%>

<style>
body {
   margin: 0;
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   background-image:url("image/25.jpeg");
   background-size:cover;
   
}
nav {
   margin: 0;
   padding: 0;
   width: 250px;
   background-color: #1f242363;
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
  background-color: ;
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
       if(stdept.equals("CSE")){
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `college`.`principal`,`studentreg` where  principal.staffcse='yes' and studentreg.studeid='"+stid+"' and studentreg.department='"+stdept+"'");
       
       ResultSet rs=ps.executeQuery();
       
       PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `college`.`assignment` where status='fortest'");
       ResultSet rs1=ps1.executeQuery();
       while(rs.next() && rs1.next())
       {
        
    	   int count=rs.getInt(1);
    	   int count1=rs1.getInt(1);
   
    	   	   
       %>




<nav class="sideBar">
<%session.setAttribute("no","1"); %>
<a class="selected" href="#" ><%=stid %></a>
<!-- <a href="#">PAPER SUBMISSION</a> -->
<a href="mark.jsp">MARKS</a>
<a href="staflistforstudent.jsp">MY FACULTIES</a>
<a href="projectreport.jsp">FINAL YEAR REPORT</a>
<a href="stuprojectmark.jsp">PROJECT MARK</a>
<a href="assignview.jsp" class="notification">ASSIGNMENTS<span class="badge"><%=count1%></span></a>
<a href="studentcircularview.jsp" class="notification">CIRCULAR<span class="badge"><%=count%></span></a>
<a href="quizgame.jsp" class="notification">QUIZ TEST</a><br>
<a href="chatstaff.jsp" class="notification">STAFF LIST</a><br>
<a href="viewleaderboard.jsp" class="notification">LEADER BOARD</a>

<a href="staffcircular.jsp" class="notification">STAFF CIRCULAR</a>

<a href="staffchat.jsp" class="notification">CHAT</a><br>
<a href="searchparkingslot.jsp" class="notification">BOOK</a>

 <a href="listofevents.jsp?name=Free">Free  Event</a>
              <a href="listofevents.jsp?name=Limit">Limitation Event</a>
              <a href="listofevents.jsp?name=Cost">Paid Event</a>
              <a href="appliedeventview.jsp">Applied Event Details</a>
               <a href="acceptedview.jsp">Applied Events Status</a>
 <a href="index.jsp">LOGOUT</a>
</nav>
<div class="content">
<center>
<h1>WELCOME</h1>
</center>

</div>
<%}} %>
<%
if(stdept.equals("ECE")){
       Connection conn;
       
       
       conn=dbcon.create();
       PreparedStatement p=conn.prepareStatement("SELECT count(*) FROM `college`.`principal`,`studentreg` where  principal.staffece='yes' and  studentreg.studstatus='' and studentreg.studeid='"+stid+"' and studentreg.department='"+stdept+"'");
       
       ResultSet r=p.executeQuery();
       
       PreparedStatement p1=conn.prepareStatement("SELECT count(*) FROM `college`.`assignment` where status='fortest'");
       ResultSet r1=p1.executeQuery();
       while(r.next() && r1.next())
       {
        
    	   int count=r.getInt(1);
    	   int count1=r1.getInt(1);
   
    	
    
    	  
    	   
       %>




<nav class="sideBar">
<a class="selected" href="#" ><%=stid %></a>
<a href="#">PAPER SUBMISSION</a>
<a href="mark.jsp">MARKS</a>
<a href="staflistforstudent.jsp">MY FACULTIES</a>
<a href="projectreport.jsp">FINAL YEAR REPORT</a>
<a href="stuprojectmark.jsp">PROJECT MARK</a>
<a href="assignview.jsp" class="notification">ASSIGNMENTS<span class="badge"><%=count1%></span></a>
<a href="studentcircularview.jsp" class="notification">CIRCULAR<span class="badge"><%=count%></span></a>
 <a href="index.jsp">LOGOUT</a>
</nav>
<div class="content">
<center>
<h1>WELCOME</h1>
</center>

</div>
<%}} %>
<%
if(stdept.equals("IT")){
       Connection connn;
       
       
       connn=dbcon.create();
       PreparedStatement s=connn.prepareStatement("SELECT count(*) FROM `college`.`principal`,`studentreg` where  principal.staffit='yes' and  studentreg.studstatus='' and studentreg.studeid='"+stid+"' and studentreg.department='"+stdept+"'");
        
       ResultSet m=s.executeQuery();
       
       PreparedStatement s1=connn.prepareStatement("SELECT count(*) FROM `college`.`assignment` where status='fortest'");
       ResultSet m1=s1.executeQuery();
       while(m.next() && m1.next())
       {
        
    	   int count=m.getInt(1);
    	   int count1=m1.getInt(1);
   
    	
    
    	  
    	   
       %>




<nav class="sideBar">
<a class="selected" href="#" ><%=stid %></a>
<a href="#">PAPER SUBMISSION</a>
<a href="mark.jsp">MARKS</a>
<a href="staflistforstudent.jsp">MY FACULTIES</a>
<a href="projectreport.jsp">FINAL YEAR REPORT</a>
<a href="stuprojectmark.jsp">PROJECT MARK</a>
<a href="assignview.jsp" class="notification">ASSIGNMENTS<span class="badge"><%=count1%></span></a>
<a href="studentcircularview.jsp" class="notification">CIRCULAR<span class="badge"><%=count%></span></a>
 <a href="index.jsp">LOGOUT</a>
</nav>
<div class="content">
<center>
<h1>WELCOME</h1>
</center>

</div>
<%}} %>
</body>
</html>
