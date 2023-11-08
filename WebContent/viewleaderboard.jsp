<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.InputStream" %> 
<%@ page import="java.io.OutputStream" %> 

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/home.css">

<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<%
String pname="";
String price="";
String quant="";
String pics="";
String pid="";

String dept=session.getAttribute("stdept").toString();
/* String idnum=session.getAttribute("idnum").toString();

String nom=session.getAttribute("nom").toString();
System.out.println(nom);
 */%>



<body>









<header style="overflow:hidden;position:sticky;clear:both;">
<nav class="navbar navbar-default" role="navigation"  >

<%-- <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps1=con.prepareStatement("SELECT count(*) FROM `mobileappliance`.`cart` where usermail='"+umail+"' and status='Added to cart'");
       
       ResultSet rs1=ps1.executeQuery();
       
       while(rs1.next())
       {
        
    	   int count=rs1.getInt(1);
    	 
   
    --%> 	
    
    	  
    	
 <!--  <!-- Brand and toggle get grouped for better mobile display
  <div class="navbar-header"  >
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Brand</a>
  </div>

  Collect the nav links, forms, and other content for toggling
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Link</a></li>
      <li><a href="#">Link</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="#">Action</a></li>
          <li><a href="#">Another action</a></li>
          <li><a href="#">Something else here</a></li>
          <li class="divider"></li>
          <li><a href="#">Separated link</a></li>
          <li class="divider"></li>
          <li><a href="#">One more separated link</a></li>
        </ul>
      </li>
    </ul>
    <div class="col-sm-3 col-md-3">
        <form class="navbar-form" role="search">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Search" name="q">
            <div class="input-group-btn">
                <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
            </div>
        </div>
        </form> -->
    </div>
   <%--  <ul class="nav navbar-nav navbar-right">
      <li><a href="cart.jsp"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg><span style=color:red;><%=count%></span><i class="bi bi-cart"> cart</i></a></li>
      <!-- <li><a href="userbuyed.jsp">Buyed Product</a></li>
      <li class="dropdown">
        <a href="cookingInstruction.jsp">Cook By Yourself <b ></b></a>
    --> <%} %>   
  </div><!-- /.navbar-collapse --> --%>
  
  <h3>LEADER BOARD:</h3><a href="studentmain.jsp"><button STYLE="float:right;margin-top:-20px;" class="btn btn-danger">Back</button></a>
</nav>
  </header>

<div class="container" style="overflow:hidden;">


<%
/* if(nom.equals("1")){ */

	Connection con;
	/* String departname=session.getAttribute("depana").toString();
	String progname=session.getAttribute("progname").toString();
	String classname=session.getAttribute("clana").toString();
	 */
	con=dbcon.create();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`leader` where depart='"+dept+"' ");

	ResultSet rs=ps.executeQuery();

	while(rs.next())
	{
	 pics=rs.getString(6);
		pname=rs.getString(2);
		price=rs.getString(3);

		  %>
	<div class="col-xs-12 col-md-6" style="padding:20px;">
		<!-- First product box start here-->
		<div class="prod-info-main prod-wrap clearfix"">
			<div class="row">
					<div class="col-md-5 col-sm-12 col-xs-12">
						<div class="product-image"  style="height:200px;overflow:hidden;"> 
							<img src="Local/<%=pics%>" class="img-responsive" > 
							 
						</div>
					</div>
					<div class="col-md-7 col-sm-12 col-xs-12">
					<div class="product-deatil">
							<h5 class="name">
								<a href="#">
										<span>Name: </span><%=pname %>
								</a><br><br>
								                           

							</h5>
							<p class="price-container">
								<span>College ID: <%=price %></span>
							</p>
							<p class="price-container">
								<span> :<i class="" style="font-size:20px;color:red"></i>Mark : <%=rs.getString(5) %></span>
							</p>
							<span class="tag1"></span> 
					</div>
					<div class="description">
						<p  style="font-size:15px;color:;"> </p>
					</div>
					
					<div class="description">
						<p>Department: <%=rs.getString(4) %> </p>
					</div>
					<div class="product-info smart-form">
						<div class="row">
							<div class="col-md-12"> 
								<%-- <a href="adcart.jsp?id=<%=pid%>&&pname=<%=pname%>&&price=<%=price%>&&umail=<%=umail%>&&shopname=<%=rs.getString(2)%>&&shoploca=<%=rs.getString(3)%>&&shopmail=<%=rs.getString(4)%>" class="btn btn-danger">Add to cart</a>
	                            <a href="javascript:void(0);" class="btn btn-info">More info</a>
						 --%>	</div>
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
	<%-- <%else{
con=dbconn.create();
PreparedStatement ps=con.prepareStatement("SELECT * FROM `mobileappliance`.`addproduct` where shopmail='"+idnum+"'");

ResultSet rs=ps.executeQuery();

while(rs.next())
{
 
	  pname=rs.getString(6);
	  
	  quant=rs.getString(2);
	  price=rs.getString(8);
	  pics=rs.getString(10);
	
	 pid=rs.getString(5);
	

	  %>
<div class="col-xs-12 col-md-6" style="padding:20px;">
	<!-- First product box start here-->
	<div class="prod-info-main prod-wrap clearfix"">
		<div class="row">
				<div class="col-md-5 col-sm-12 col-xs-12">
					<div class="product-image"  style="height:200px;overflow:hidden;"> 
						<img src="images/<%=pics%>" class="img-responsive" > 
						 
					</div>
				</div>
				<div class="col-md-7 col-sm-12 col-xs-12">
				<div class="product-deatil">
						<h5 class="name">
							<a href="#">
									<span>Product name: </span><%=pname %>
							</a><br><br>
							<a href="#">
								<span>Products type: </span><%=rs.getString(5) %>
							</a>                            

						</h5>
						<p class="price-container">
							<span><i class="fa fa-rupee" style="font-size:20px;color:red"></i>. <%=price %></span>
						</p>
						<p class="price-container">
							<span>warrenty :<i class="" style="font-size:20px;color:red"></i> <%=rs.getString(7) %></span>
						</p>
						<span class="tag1"></span> 
				</div>
				<div class="description">
					<p  style="font-size:15px;color:;">A Short product description here </p>
				</div>
				
				<div class="description">
					<p><%=rs.getString(9) %> </p>
				</div>
				<div class="product-info smart-form">
					<div class="row">
						<div class="col-md-12"> 
							<a href="adcart.jsp?id=<%=pid%>&&pname=<%=pname%>&&price=<%=price%>&&umail=<%=umail%>&&shopname=<%=rs.getString(2)%>&&shoploca=<%=rs.getString(3)%>&&shopmail=<%=rs.getString(4)%>" class="btn btn-danger">Add to cart</a>
	                             <a href="javascript:void(0);" class="btn btn-info">More info</a>
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

<%} %> --%>




        
</div>
</div>
</body>
<script type="text/javascript">

const searchFocus = document.getElementById('search-focus');
const keys = [
  { keyCode: 'AltLeft', isTriggered: false },
  { keyCode: 'ControlLeft', isTriggered: false },
];

window.addEventListener('keydown', (e) => {
  keys.forEach((obj)=> {
    if (obj.keyCode === e.code) {
      obj.isTriggered = true;
    }
  });

  const shortcutTriggered = keys.filter((obj) => obj.isTriggered).length === keys.length;

  if (shortcutTriggered) {
    searchFocus.focus();
  }
});

window.addEventListener('keyup', (e) => {
  keys.forEach((obj) => {
    if (obj.keyCode === e.code) {
      obj.isTriggered = false;
    }
  });
});

</script>
</html>

