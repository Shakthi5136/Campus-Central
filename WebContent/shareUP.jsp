<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String user=session.getAttribute("User").toString();

String id=request.getParameter("id");
String status="hod view";

try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `college`.`principal` set status='"+status+"', fromu='"+user+"' where id='"+id+"' ");
	response.sendRedirect("Shared.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>