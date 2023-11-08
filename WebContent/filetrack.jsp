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
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #474e5d;
  font-family: Helvetica, sans-serif;
}

/* The actual timeline (the vertical ruler) */
.timeline {
  position: relative;
  max-width: 1200px;
  margin: 0 auto;
}

/* The actual timeline (the vertical ruler) */
.timeline::after {
  content: '';
  position: absolute;
  width: 6px;
  background-color: white;
  top: 0;
  bottom: 0;
  left: 50%;
  margin-left: -3px;
}

/* Container around content */
.container {
  padding: 10px 40px;
  position: relative;
  background-color: inherit;
  width: 50%;
}

/* The circles on the timeline */
.container::after {
  content: '';
  position: absolute;
  width: 25px;
  height: 25px;
  right: -17px;
  background-color: white;
  border: 4px solid #FF9F55;
  top: 15px;
  border-radius: 50%;
  z-index: 1;
}

/* Place the container to the left */
.left {
  left: 0;
}

/* Place the container to the right */
.right {
  left: 50%;
}

/* Add arrows to the left container (pointing right) */
.left::before {
  content: " ";
  height: 0;
  position: absolute;
  top: 22px;
  width: 0;
  z-index: 1;
  right: 30px;
  border: medium solid white;
  border-width: 10px 0 10px 10px;
  border-color: transparent transparent transparent white;
}

/* Add arrows to the right container (pointing left) */
.right::before {
  content: " ";
  height: 0;
  position: absolute;
  top: 22px;
  width: 0;
  z-index: 1;
  left: 30px;
  border: medium solid white;
  border-width: 10px 10px 10px 0;
  border-color: transparent white transparent transparent;
}

/* Fix the circle for containers on the right side */
.right::after {
  left: -16px;
}

/* The actual content */
.content {
  padding: 20px 30px;
  background-color: violet;
  position: relative;
  border-radius: 6px;
}

/* Media queries - Responsive timeline on screens less than 600px wide */
@media screen and (max-width: 600px) {
  /* Place the timelime to the left */
  .timeline::after {
  left: 31px;
  }
  
  /* Full-width containers */
  .container {
  width: 100%;
  padding-left: 70px;
  padding-right: 25px;
  }
  
  /* Make sure that all arrows are pointing leftwards */
  .container::before {
  left: 60px;
  border: medium solid white;
  border-width: 10px 10px 10px 0;
  border-color: transparent white transparent transparent;
  }

  /* Make sure all circles are at the same spot */
  .left::after, .right::after {
  left: 15px;
  }
  
  /* Make all right containers behave like the left ones */
  .right {
  left: 0%;
  }
}
</style>
</head>
<body>
<button type="button" class="btn btn-primary" onclick="history.back()" style="float:right;">back</button><br><br>

<%
       String id=session.getAttribute("depid").toString();
String depart=request.getParameter("depart").toString();
HttpSession ses=request.getSession();
ses.setAttribute("depo",depart);
     System.out.println(id);
      
     System.out.println(depart);
       
   
    	  
       %>
 <div class="timeline">
  <div class="container right">
    <div class="content">
      <h2>Principal</h2>
        </div>
  </div>
 <%
        if(depart.equals("CSE")){
        	System.out.println(depart);
        	 Connection con;
        
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal` where   hodcse='yes'  and id='"+id+"' ");
       PreparedStatement ps1=con.prepareStatement("SELECT * FROM `college`.`principal` where   staffcse='yes'  and id='"+id+"' ");
       PreparedStatement ps2=con.prepareStatement("SELECT count(*) FROM `college`.`studfiletrack` where   status='yes'");
       
       ResultSet rs=ps.executeQuery();
       ResultSet rs1=ps1.executeQuery();
       ResultSet rs2=ps2.executeQuery();
       while(rs.next())
       {
        
    	      	   
       %>
 
 
  <div class="container left">
    <div class="content">
      <h2>HOD</h2>
      </div>
  </div>
 <% while(rs1.next())
       {
        
      
    	   
       %>
 
  <div class="container right">
    <div class="content">
      <h2><a href="fileviewstaffdetails.jsp">STAFF</a></h2>
        </div>
  </div>
  <% while(rs2.next())
       {
        
		int count=rs2.getInt(1);
    	   
       %>
  
  <div class="container left">
    <div class="content">
      <h2><a href="fileviewstudentdetails.jsp">Student(<%=count %>)</a></h2>
      
    </div>

 <% } }
       }}
 %>
  
<% if(depart.equals("ECE")){
        	 Connection con;
        
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal` where   hodece='yes'  and id='"+id+"' ");
       PreparedStatement ps1=con.prepareStatement("SELECT * FROM `college`.`principal` where   staffece='yes'  and id='"+id+"' ");
       PreparedStatement ps2=con.prepareStatement("SELECT count(*) FROM `college`.`studfiletrack` where   status='yes'");
       
       ResultSet rs=ps.executeQuery();
       ResultSet rs1=ps1.executeQuery();
       ResultSet rs2=ps2.executeQuery();
       while(rs.next())
       {
          	   
       %>
 
 
  <div class="container left">
    <div class="content">
      <h2>HOD</h2>
      </div>
  </div>
 <% while(rs1.next())
       {
         
       %>
 
  <div class="container right">
    <div class="content">
      <h2><a href="fileviewstaffdetails.jsp">STAFF</a></h2>
        </div>
  </div>
  <% while(rs2.next())
       {
		int count=rs2.getInt(1);
       %>
  
  <div class="container left">
    <div class="content">
      <h2><a href="fileviewstudentdetails.jsp">Student(<%=count %>)</a></h2>
      <p><img src=image/></p>
    </div>

 <% } }
       }}
 %>
 
 <% if(depart.equals("IT")){
        	 Connection con;
        
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal` where   hodit='yes'  and id='"+id+"' ");
       PreparedStatement ps1=con.prepareStatement("SELECT * FROM `college`.`principal` where   staffit='yes'  and id='"+id+"' ");
       PreparedStatement ps2=con.prepareStatement("SELECTSELECT count(*) FROM `college`.`studfiletrack` where   status='yes'");
       
       ResultSet rs=ps.executeQuery();
       ResultSet rs1=ps1.executeQuery();
       ResultSet rs2=ps2.executeQuery();
       while(rs.next())
       {
             	   
       %>
 
 
  <div class="container left">
    <div class="content">
      <h2>HOD</h2>
      </div>
  </div>
 <% while(rs1.next())
       {
        
      
       %>
 
  <div class="container right">
    <div class="content">
      <h2><a href="fileviewstaffdetails.jsp">STAFF</a></h2>
        </div>
  </div>
  <% while(rs2.next())
       {
         	int count=rs2.getInt(1);   
       %>
  
  <div class="container left">
    <div class="content">
      <h2><a href="fileviewstudentdetails.jsp">Student(<%=count%>)</a></h2>
      <p><img src=image/></p>
    </div>

 <% } 
  }
 }
}
 %>
</body>
</html>
