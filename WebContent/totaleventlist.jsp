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
<button type="button" class="btn btn-primary" onclick="print();" style="float:right;margin-right:30px;"> Print </button><br><br>
<body>


<div class="container">
             <p> College Event Here!!....................................... </p>
  <table class="table  table-hover">
  <%
  String clg=session.getAttribute("clg").toString(); %>
  <%String cmail=session.getAttribute("cmail").toString(); %> 
    <thead>
      <tr>
      <th> ID</th>
        <th>Organiser Mail</th>
        <th>Department</th>
  
        <th>College</th>
         <th>Event  Date	</th>
        <th>Organized  By</th>
                <th>Event Type</th>
               <th>Event Name</th>
        
       
                <th>Status</th>
                        
                
        
       
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `collegeevent`.`freeevent` where  email='"+clg+"' and status='Approved' and sdate<='2023-03-17'"+" ORDER BY sdate DESC");
       
       
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
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(16)%></td>
        <td><%=rs.getString(4)%></td>
      
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(17)%>, <%=rs.getString(18)%></td>
         <td><%=rs.getString(24)%></td>
                  <td><%=rs.getString(25)%></td>
         
                <td><%=rs.getString(13)%></td>
                
               <td><a href="approvedlistview.jsp?event=<%=rs.getString(25)%>&&orgmail=<%=rs.getString(7)%>&&clg=<%=clg%>&&eventtype=<%=rs.getString(24)%>&&dept=<%=rs.getString(16)%>"><button class="btn btn-primary">View</button></a></td>
                
       
        	  <%-- <td><img class="card-img-top" src="product/<%=image %>" width="40" height="50" alt="Card image cap"></td> --%>
        
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>