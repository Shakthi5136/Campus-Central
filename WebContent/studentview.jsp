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
System.out.println(file);
String stid=session.getAttribute("stid").toString();
 String stdept=session.getAttribute("stdept").toString(); 
 System.out.println("dept" +stdept);
 String status="yes";
 %>




<body>
<embed type="application/pdf" src="principal/<%=file%>" height="720px" width="100%" >

<%
SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
Date date = new Date();    

try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	if(stdept.equals("CSE")){
		System.out.println(stdept);
	st.executeUpdate("INSERT INTO college.studfiletrack  VALUES(id,'"+stid+"','"+stdept+"','"+file+"','"+status+"','"+formatter.format(date)+"')");
	
/* 	response.sendRedirect("studentcircularview.jsp?valid"); */
	}
	if(stdept.equals("ECE")){
		System.out.println(stdept);
		st.executeUpdate("INSERT INTO college.studfiletrack  VALUES(id,'"+stid+"','"+stdept+"','"+file+"','"+status+"','"+formatter.format(date)+"'))");
		/* response.sendRedirect("studentcircularview.jsp?valid"); */
		}
	if(stdept.equals("IT")){
		st.executeUpdate("INSERT INTO college.studfiletrack  VALUES(id,'"+stid+"','"+stdept+"','"+file+"','"+status+"','"+formatter.format(date)+"'))");
		/* response.sendRedirect("studentcircularview.jsp?valid"); */
		}

}
catch(Exception e){
	response.sendRedirect("error.jsp?invalid");
System.out.println(e);
}
%>


</body>
</html>