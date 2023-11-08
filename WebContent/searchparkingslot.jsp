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
<link rel="stylesheet" href="css1/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>


</head>


<style>
.mydiv{
font-size:20px;
text-decoration:none;
float:right;
}

body{
width:90%;
margin-left:20px;
background-image:linear-gradient(rgba(0,0,0,0.5) rgba(0,0,0,0.5)),url("images/images (14).jfif")
}








@import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family:'Montserrat', sans-serif;
  letter-spacing: .1em;
}

.logo{
  max-width:100px;
}

.menu{/*header*/
 
  display:flex;
  background: #000;
  align-items: center;
  justify-content: space-around;
  height: 50px;
  padding: 1rem;
  color: #fff;
}

#lista{/*menu ul*/
  display:flex;
  list-style: none;
  gap: .5rem;

 
}
#lista li{
  display: block;
  padding: .5rem;
  cursor:pointer;
}

#lista li:hover{
  background:#ddd;
  color:#000;
  border-radius:3px;
}


#btn{
  display: none;
}

@media (max-width:600px){
  #btn{
    display: block;
    padding: 5px;
    background: transparent;
    border: none;
    color: #fff;
  }
  
  .fas{
    font-size: 25px;
    
  }
 
  
  #btn:hover{
    color: #fff;
    border-color: #fff;
 
  }
  #lista{
    display: block;
    position: absolute;
    top: 50px;
    right: 0;
    width: 0;
    height:calc(100vh - 50px);
    margin:0;
    padding: 20px 0;
    background: #000;
    text-align: center;
    z-index: 1000;
    
    transition: 0.3s;
    visibility: hidden;
    overflow-y: hidden;
  }
  
  
  /*Adiciona as os estilos quando a classe for ativa*/
  #nav.active #lista{
    width: 100%;
    visibility: visible;
    overflow-y: auto;
  }
  
  
    #lista li{
    border-bottom: 2px solid #fff;
    padding: 1rem ;
     
  }
  
  
  
}

</style>


<div class="mydiv">
<button class="btn btn-danger" onclick="history.back()">Go back</button></a>
</div><br><br><br>
<body >


<form action="roomdepartdivisor.jsp" ng-app="">
<div class="choose" style="margin-left:20px;">
<h3>Enter Book Name:</h3></br>


 Book Name: <input type="checkbox" value="room" name="room" ng-model="myVar">     <!-- Product:<input type="checkbox" value="depart" name="room" ng-model="myV">
<div style="padding:20px;" ng-show="myV">
<input type="text" placeholder="Enter the shop name" name="producttype" ><br></br>
<input type="text" placeholder="Enter the Product Name" name="productname" ><br></br>
<input type="text" placeholder="Enter the maximum Cost" name="cost" ><br></br>
<input type="submit"  value="submit" >
</div> 

 -->
 <div ng-show="myVar">
<input type="text" placeholder="Enter the Bookname" name="roomnum" >
<input type="submit"  value="submit" >
<h1></h1>
</div> 
</div>


<%
String no=session.getAttribute("no").toString();
if(no.equals("2")){
	String b=session.getAttribute("deprom").toString();
System.out.println(b);
if(b.equals("room")){
	String roomnum=session.getAttribute("roomnum").toString();
	
	
	
	



	
%>
</br></br>
<h1></h1></br>
<h3>Location: <%=roomnum.toUpperCase() %></h3>
        </br>
<table class="table table-bordered">
  <thead>
    <tr>
    
      <th scope="col">ID</th>
      <th scope="col">BOOK NAME</th>
         <th scope="col">DEPARTMENT NAME</th>
         <th scope="col">STAFF ID</th>
        <th scope="col">REMARK</th>
       
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`book` where date LIKE '%"+roomnum+"%' ");
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(3);
    	  
    	
       %>
 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
   <td> <p class="card-text"><%=rs.getString(1)%></p></td>
       

<td><p class="card-text"><%=rs.getString(2)%></p></td>
             
       <td><p class="card-text"><%=rs.getString(4)%></p></td>
       <td><p class="card-text"><%=rs.getString(5)%></p></td>
       <td><a href="bookview.jsp?id=<%=rs.getString(3)%>&&nom=2"> View<i class='fa fa-trash-alt'></i></a></td>
   
 
   </tr>
   </tbody>

	<%}}%>
	
	
	<%if(b.equals("depart")){
	String departname=session.getAttribute("depana").toString();
	String progname=session.getAttribute("progname").toString();
	String classname=session.getAttribute("clana").toString();
	/* String year=session.getAttribute("year").toString(); */
%>

 
</br></br>
<h1>Product Details:</h1></br>
<%-- <h3>Location: <%=departname.toUpperCase() %></h3>
 --%> 
 <h3>Product: <%=progname.toUpperCase() %></h3>
 
 <h3>Maximum Cost: <%=classname.toUpperCase() %></h3>
 
        </br>
<table class="table table-bordered">
  <thead>
    <tr>
    
      <th scope="col">ID</th>
      <th scope="col">SHOP NAME</th>
         <th scope="col">LOCATION</th>
         <th scope="col">COST</th>
        <th scope="col">REMARK</th>
       
    </tr>
  </thead>


       <%
       
       
       Connection con;
       System.out.println(departname+progname);
      
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`book` WHERE  file LIKE '%"+progname+"%' or productna LIKE '%"+progname+"%' and cost<='"+classname+"'    ");
       
       
       ResultSet rs=ps.executeQuery();
     
       
     while(rs.next())
       {
       	     	
    	 
    	String image=rs.getString(3);
    	  
    	   
       %>
 <tbody>
    <tr>
	

	
	  <%--      <td><img src="Local/<>" width="70" height="70"/></td> --%>
     
   <td><p class="card-text"><%=rs.getString(1)%></p></td>
               <td><p class="card-text"><%=rs.getString(2)%></p></td> 
       <td><p class="card-text"><%=rs.getString(3)%></p></td>
       <td><p class="card-text"><%=rs.getString(8)%></p></td>
       <td><a href="acart.jsp?id=<%=rs.getString(4)%>&&nom=1"> View<i class='fa fa-trash-alt'></i></a></td>
 
 
   </tr>
   </tbody>

	<%}}}%>
	
	
</table>
</form>
</body>
</html>