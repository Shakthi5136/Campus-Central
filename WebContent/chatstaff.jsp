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



<div class="choose" style="margin-left:20px;">

<table class="table table-bordered">
  <thead>
    <tr>
    
      <th scope="col">ID</th>
      <th scope="col">STAFF NAME</th>
         <th scope="col">DEPARTMENT </th>
        <th scope="col">REMARK</th>
       
    </tr>
  </thead>

       <%
       
       Connection con;
       
      
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`staffreg`  ");
       
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
             
       <td><p class="card-text"><%=rs.getString(3)%></p></td>
       <td><a href="chatdesc.jsp?id=<%=rs.getString(1)%>&&nom=2"> Chat<i class='fa fa-trash-alt'></i></a></td>
   
 
   </tr>
   </tbody>

	<%} %>
	
	
	
	
	
</table>
</form>
</body>
</html>