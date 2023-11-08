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
<%String file=request.getParameter("file");
String id=request.getParameter("id");


%>
<% String hod=session.getAttribute("dept").toString(); %>
<body>
<embed type="application/pdf" src="principal/<%=file%>" height="720px" width="100%" >

<%

	Connection con=dbcon.create();
	Statement st=con.createStatement();
	if(hod.equals("CSE")){
	st.executeUpdate("UPDATE `college`.`principal` set status='viewed',hodstatus='viewed'  where id='"+id+"' ");
	}
	if(hod.equals("ECE")){
		st.executeUpdate("UPDATE `college`.`principal` set status='viewed',hodstatus='viewed'  where id='"+id+"' ");
		}
	if(hod.equals("IT")){
		st.executeUpdate("UPDATE `college`.`principal` set status='viewed',hodstatus='viewed'  where id='"+id+"' ");
		}
	

%>



</body>
</html>