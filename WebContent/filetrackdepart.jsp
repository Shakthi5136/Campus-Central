<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
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
@import url('https://fonts.googleapis.com/css?family=Roboto:300,400,700,900');


body{
    display: flex;
    justify-content: center;
    align-items: center;
    background: #f3f5f8;

    font-family: 'Roboto', sans-serif;
}


.card{
margin-top:100px;

  padding: 20px;
  background: #ededed;
  height: 420px;
  border-radius: 30px;
  box-shadow: 20px 20px 20px #0000000d;
  max-width: 330px;
  letter-spacing: .3px;
}

.card h2{
  width: 220px;
}

.main{
  top: 20%;
  box-shadow: 20px 20px 20px 0px #0000001c;
  position: relative;
  z-index: 1;
  display: block;
  height: 38%;
  line-height: 1.5;
}

body {
  background-image: url("image/28.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}

.block{
  padding: 20px;
  background: #d9f3a2;
  width: 290px;
  height: 100px;
  border-radius: 15px;
  transform: skewY(349deg);
}

.block-2{
  padding: 20px;
  background: #d9f3a2;
  width: 290px;
  height: 169px;
  border-radius: 15px;
  position: relative;
  transform: skewY(5.5deg);
  right: 20px;
  bottom: -19px;
}

.clear{
  transform: skewY(2.3deg);
  width: 250px;
  height: 150px;
  position: absolute;
  top: 0;
  color: #191b1c;
}
a{

padding:20px;
}
.avatar{
  border-radius: 100%;
  width: 100px;
  height: 100px;
  position: absolute;
  top: -83px;
  border: 8px #d9f3a2 solid;
  box-shadow: 30px 30px 30px -50px;
}

.content{
  color: #505050;
  position: absolute;
  top: 25px;
  height: 170px;
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 5;
  -webkit-box-orient: vertical;
  margin-top:-30px;
}

.content span{
  border-bottom: 1px black dashed;
}

.content span p{
  margin-top: 7px;
}</style>
<body>

<div class="card">
<div class="main">
<button type="button" class="btn btn-primary" onclick="history.back()" style="float:right;margin-top:-200px;margin-right:-500px;">back</button><br><br>
<center>
       
    <div class="block">
    <div class="block-2">
      <div class="clear">
          
        <div class="content">
<%--            <p class="card-text"><img class="card-img-top" src="Local/<%=image %>" width="40" height="150" alt="Card image cap"></p>
 	  
   <p class="card-text"> Name: <%=rs.getString(2)%></p>
    <p class="card-text">Email ID:<%=rs.getString(4)%></p>
    <p class="card-text">Contact Number:<%=rs.getString(3)%></p>
   --%> 
  <%
  String id=request.getParameter("id").toString();
  HttpSession ses=request.getSession();
   ses.setAttribute("depid",id);
%>

   <center>
   <a href="filetrack.jsp?depart=CSE"><button class="btn btn-primary">CSE Department View</button></a>
   <br></br>
    <a href="filetrack.jsp?depart=ECE"><button class="btn btn-primary">ECE Department View</button></a>
    <br></br>
    <a href="filetrack.jsp?depart=IT"><button class="btn btn-primary">IT Department View</button></a>
     
    </center>
      </div>
      </div>
      </div>

	
        </div>
        </center>
      </div>
    </div>
<!-- <a href="employmainpage.jsp"><button class="btn btn-primary">View</button></a> -->

</body>
</html>