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
</head>
<body>
<% String hod=session.getAttribute("dept").toString(); %>
<%

if(hod.equals("CSE")){
	response.sendRedirect("hodcircularview.jsp");
}
else if(hod.equals("ECE")){
	response.sendRedirect("ecehodcircularview.jsp");
}
else if(hod.equals("IT")){
	response.sendRedirect("ithodcircularview.jsp");
}

%>

</body>
</html>