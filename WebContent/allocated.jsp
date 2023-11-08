<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String stafname=request.getParameter("stafname");
String stafid=request.getParameter("stafid");
String studentid=request.getParameter("studentid");


String status="Allot";
try{
	Connection con=dbcon.create();
	PreparedStatement ps=con.prepareStatement("UPDATE `college`.`studentreg` set counsellor=?,cid=?,status=? where studeid=?");
	ps.setString(1, stafname);
	ps.setString(2, stafid);
	ps.setString(3, status);
	ps.setString(4, studentid);
	
	ps.executeUpdate();

	
   

    response.sendRedirect("hodmain.jsp");
}
catch(Exception e){
System.out.println(e);	
}
%>