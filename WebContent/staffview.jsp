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
<%@page import="java.util.Date"%>  
<%@page import=" java.text.SimpleDateFormat"%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%String file=request.getParameter("file");
String id=request.getParameter("id");
String stafid=session.getAttribute("stafid").toString();


%>

<body>
<embed type="application/pdf" src="principal/<%=file%>" height="720px" width="100%" >

<%
SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
Date date = new Date();  
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `college`.`principal`,`staffreg` set principal.status='staff view',staffreg.fileviewtime='"+formatter.format(date)+"' where principal.id='"+id+"' and staffreg.stafid='"+stafid+"' ");
	
	

%>



</body>
</html>