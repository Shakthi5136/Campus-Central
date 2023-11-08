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
<link rel="stylesheet" href="css1/bootstrap.min.css">
</head>
<%
String dep=session.getAttribute("stdept").toString(); 
System.out.println(dep);
String stid=session.getAttribute("stid").toString(); 
%>
<body>

<button type="button" class="btn btn-primary" onclick="history.back()" style="float:right;">back</button><br><br>

<div class="container">
              <div class="table-responsive-sm">  
  <table class="table table-bordered">
    <thead>
      <tr>
           
        <th>Department</th>
        <th>Circular</th>

        <th>View</th>
       
        
      </tr>
    </thead>
     <%
       if(dep.equals("CSE")){
       Connection con;
       System.out.println(dep+ " hello");
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal`,`studentreg` where  principal.staffcse='yes' and studentreg.studeid='"+stid+"' and studentreg.department='"+dep+"' ");
      /*  PreparedStatement ps1=con.prepareStatement("SELECT * FROM `college`.`studentreg` where studstatus=''  ");
       */   
       ResultSet rs=ps.executeQuery();
       /* ResultSet rs1=ps1.executeQuery();
 */       
       while(rs.next())
       {
  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>


      
        	  <td><a href="studentview.jsp?file=<%=rs.getString(3)%>&&id=<%=rs.getString(1)%>">View</a></td>
        	   
     
        
        
      </tr>
    </tbody>
    	<%}}
        %>
        <%
       if(dep.equals("IT")){
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal` where hodit='yes' and staffit='yes' ");
         ResultSet rs=ps.executeQuery();
      
       while(rs.next() )
       {
  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>


      
        	  <td><a href="studentview.jsp?file=<%=rs.getString(3)%>&&id=<%=rs.getString(1)%>">View</a></td>
        	
        
        
      </tr>
    </tbody>
    	<%}
       }
        %>
        <%
       if(dep.equals("ECE")){
       Connection con;
       
       
       con=dbcon.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `college`.`principal` where hodece='yes' and staffece='yes' ");
         ResultSet rs=ps.executeQuery();
      
       while(rs.next() )
       {
  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>


      
        	  <td><a href="studentview.jsp?file=<%=rs.getString(3)%>&&id=<%=rs.getString(1)%>">View</a></td>
        	 
        
        
      </tr>
    </tbody>
    	<%}
       }
        %>
  </table>
</div>
</div>
</body>
</html>