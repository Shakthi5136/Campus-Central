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

<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
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


<body>









<header style="overflow:hidden;position:sticky;clear:both;">
<nav class="navbar navbar-default" role="navigation"  >
</div>
   <!--  <ul class="nav navbar-nav navbar-right">
      <li><a href="cartproduct.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg><span style=color:red;></span><i class="bi bi-cart"> cart</i></a></li> -->
      <!-- <li><a href="userbuyed.jsp">Buyed Product</a></li>
      <li class="dropdown">
        <a href="cookingInstruction.jsp">Cook By Yourself <b ></b></a>
    -->  
  </div><!-- /.navbar-collapse -->
</nav>
  </header>

<div class="container" >


       <%
       
       Connection con;
       
       SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
	    Date date = new Date();  
	    System.out.println(formatter.format(date));  
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`achievement` where date<='"+formatter.format(date)+"'" + "ORDER by date DESC");
       
       ResultSet rs=ps.executeQuery();
     
     while(rs.next())
       {
       	     	
    	String image=rs.getString(12);
    	  System.out.println(image);
    	
       %>
 <div class="col-xs-12 col-md-6" style="padding:20px;">
		<!-- First product box start here-->
		<div class="prod-info-main prod-wrap clearfix"">
			<div class="row">
					<div class="col-md-5 col-sm-12 col-xs-12">
						<div class="product-image"  style="height:200px;overflow:hidden;"> 
							<img src="product/<%=image%>" class="img-responsive" > 
							 
						</div>
					</div>
					<div class="col-md-7 col-sm-12 col-xs-12">
					<div class="product-deatil">
							<h5 class="name">
								<a href="#">
										<span>Prize : </span><%=rs.getString(7)  %>
								</a><br><br>
								<a href="#">
									<span>Event type: </span><%=rs.getString(5) %>
								</a> <br><br>
								<a href="#">
									<span>Event Name: </span><%=rs.getString(3) %>
								</a>                            

							</h5>
							<p class="price-container">
								<span>Student Name :<i class="fa fa-rupee" style="font-size:20px;color:red"></i> <%= rs.getString(8) %></span>
							</p>
							<p class="price-container">
								<span>Student College :<i class="fa fa-rupee" style="font-size:20px;color:red"></i> <%= rs.getString(9) %></span>
							</p>
							<p class="price-container">
								<span>Organizing College :<i class="" style="font-size:20px;color:red"></i> <%=rs.getString(4) %></span>
							</p>
								<p class="price-container">
								<span>Applied Date :<i class="" style="font-size:20px;color:red"></i> <%=rs.getString(14) %></span>
							</p>
							<span class="tag1"></span> 
					</div>
					<%-- <div class="description">
						<p  style="font-size:15px;color:;">A Short product description here </p>
					</div>
					
					<div class="description">
						<p><%=rs.getString(9) %> </p>
					</div> --%>
					<div class="product-info smart-form">
						<div class="row">
							<div class="col-md-12"> 
							<%-- 	<a href="adcart.jsp?id=<%=pid%>&&pname=<%=pname%>&&price=<%=price%>&&umail=<%=umail%>&&shopname=<%=rs.getString(2)%>&&shoploca=<%=rs.getString(3)%>&&shopmail=<%=rs.getString(4)%>" class="btn btn-danger">Add to cart</a>
	                         --%>    <a href="javascript:void(0);" class="btn btn-info">More info</a>
							</div>
							<!-- <div class="col-md-12">
								<div class="rating">Rating:
									<label for="stars-rating-5"><i class="fa fa-star text-danger"></i></label>
									<label for="stars-rating-4"><i class="fa fa-star text-danger"></i></label>
									<label for="stars-rating-3"><i class="fa fa-star text-danger"></i></label>
									<label for="stars-rating-2"><i class="fa fa-star text-warning"></i></label>
									<label for="stars-rating-1"><i class="fa fa-star text-warning"></i></label>
								</div>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end product -->
	</div>
	<%}%>
	
	
 

</table>
</form>
</body>
</html>