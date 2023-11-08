<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%


String id=request.getParameter("id");
String mark=request.getParameter("mark");
String tmark=request.getParameter("tmark");
String studid=request.getParameter("studentid");



String status="Mark Updated";

try{
	Connection con=dbcon.create();
	PreparedStatement ps=con.prepareStatement("UPDATE college.testpaper set  status=?, getmark=?, totalmark=? where id=? ");
	ps.setString(1, status);
	ps.setString(2, mark);
	ps.setString(3, tmark);
	ps.setString(4, id);
	
	ps.executeUpdate();

	
    response.sendRedirect("marksupdate.jsp");
}
catch(Exception e){
System.out.println(e);	
}

%>