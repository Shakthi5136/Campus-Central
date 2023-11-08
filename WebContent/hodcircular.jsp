<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String hod=session.getAttribute("dept").toString();

String id=request.getParameter("id");
String depart="Staff";

try{
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	
	if(hod.equals("CSE")){
		st.executeUpdate("UPDATE `college`.`principal` set hodcse='yes' , status='viewed',hodstatus='viewed'  where id='"+id+"' ");
		}
		if(hod.equals("ECE")){
			st.executeUpdate("UPDATE `college`.`principal` set hodece='yes' , status='viewed',hodstatus='viewed'  where id='"+id+"' ");
			}
		if(hod.equals("IT")){
			st.executeUpdate("UPDATE `college`.`principal` set hodit='yes' , status='viewed',hodstatus='viewed'  where id='"+id+"' ");
			}
	response.sendRedirect("hodmain.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>