<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");




String status="Accepted";
try{
	{
		Connection con;
		con=dbcon.create();
		Statement rs=con.createStatement();
		rs.executeUpdate("UPDATE collegeevent.colmanreg  SET status='"+status+"' where id='"+id+"'");
	response.sendRedirect("collegedetails.jsp?valid");
}
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>