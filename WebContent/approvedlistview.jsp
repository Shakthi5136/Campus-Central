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
</head>
<Style>
p{
Color:red;
text-align:center;}


</Style>
<button type="button" class="btn btn-primary" onclick="history.back();" style="float:right"> Back </button>
<button type="button" class="btn btn-primary" onclick="print();" style="float:right;margin-right:30px;"> Print </button>
<a href="prizedetails.jsp"><button type="button" class="btn btn-primary" onclick="" style="float:right;margin-right:30px;"> Prize </button></a><br><br>

<body>

<%String event=request.getParameter("event");

String orgmail=request.getParameter("orgmail");
String clg=request.getParameter("clg");
String eventtype=request.getParameter("eventtype");
String dept=request.getParameter("dept");

session.setAttribute("prevent", event);
session.setAttribute("prorgmail", orgmail);
session.setAttribute("prclg", clg);
session.setAttribute("preventtype", eventtype);
session.setAttribute("prdept", dept);
session.setAttribute("no", "First");
%>
<div class="container">
             <p>Accepted Students list for College Event Here!!....................................... </p>
  <table class="table  table-hover">
    <thead>
      <tr>
      <th> ID</th>
        <th>Student Name</th>
        <th>Student Email</th>
  
        <th>College</th>
         <th>Event  Date	</th>
        <th>Organized By</th>
                <th>Event Type</th>
               <th>Event Name</th>
        
       
                <th>Status</th>
                        
                
        
       
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeapplyevent` where organ='"+orgmail.toUpperCase()+"' and eventtype='"+event+"' and status='Accepted' ");
       
       
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
                
               
       
        	  <%-- <td><img class="card-img-top" src="product/<%=image %>" width="40" height="50" alt="Card image cap"></td> --%>
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>