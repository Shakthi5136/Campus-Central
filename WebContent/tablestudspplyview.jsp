<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="dbcon.Dbconn"%>
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
</head>
<Style>
p{
Color:red;
text-align:center;}


</Style>
<button type="button" class="btn btn-outline-primary"  style="float:right"><a href="stafmain.jsp"> Back </a></button><br><br>
<body>


<div class="container">
             <p>APPOINTED HERE!! </p>
  <table class="table  table-hover">
    <thead>
      <tr>
      <th>Your ID</th>
        <th>Your Name</th>
        <th>Your Email</th>
  
        <th>College</th>
         <th>Event start Date	</th>
        <th>Organised By</th>
                <th>Event Type</th>
               <th>Event Name</th>
        
       
                <th>Status</th>
                        <th>Remark</th>
                
        
       
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeapplyevent` where eventname='free' and status='Not Approved'  ");
       
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(9);
    	  String id=rs.getString(1);
    	  String mail=rs.getString(1);
    	   System.out.println(id);
       %>
    <tbody>
      <tr>
      <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(5)%></td>
      
        <td><%=rs.getString(18)%></td>
        <td><%=rs.getString(17)%></td>
         <td><%=rs.getString(15)%></td>
                  <td><%=rs.getString(16)%></td>
         
                <td><%=rs.getString(28)%></td>
                
                <% HttpSession sess=request.getSession();
        		sess.setAttribute("Sid", id);
        		sess.setAttribute("Sidmail", mail);
        		System.out.print( id);
        		sess.setAttribute("Stumail", rs.getString(4)); 
        		sess.setAttribute("organis", rs.getString(17));
        		sess.setAttribute("eventty",rs.getString(15)); 
        		%>
       
        	  <%-- <td><img class="card-img-top" src="product/<%=image %>" width="40" height="50" alt="Card image cap"></td> --%>
        <td><a href="studapplyview.jsp"><button class="btn btn-primary">View More Details</button></a>
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>