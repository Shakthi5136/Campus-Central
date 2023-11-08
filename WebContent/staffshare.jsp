<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String dep=session.getAttribute("dept").toString();
String stafid=session.getAttribute("stafid").toString();
String staffdep=session.getAttribute("sdept").toString();

String id=request.getParameter("id");
String depart="Staff";

try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	if(staffdep.equals("CSE")){
	st.executeUpdate("UPDATE college.principal p SET depart='"+dep+"' , staffcse='yes' where id='"+id+"' ");
	st.executeUpdate("UPDATE college.staffreg p SET staffstatus='yes' where stafid='"+stafid+"' ");
	response.sendRedirect("staffcircularview.jsp?valid");
	}
	if(staffdep.equals("ECE")){
		st.executeUpdate("UPDATE college.principal p SET depart='"+dep+"' , staffcse='yes' where id='"+id+"' ");
		st.executeUpdate("UPDATE college.staffreg p SET staffstatus='yes' where stafid='"+stafid+"' ");
		response.sendRedirect("staffcircularview.jsp?valid");
	}
	if(staffdep.equals("IT")){
		st.executeUpdate("UPDATE college.principal p SET depart='"+dep+"' , staffit='yes' where id='"+id+"' ");
		st.executeUpdate("UPDATE college.staffreg p SET staffstatus='yes' where stafid='"+stafid+"' ");
		response.sendRedirect("staffcircularview.jsp?valid");
	}
	
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>