<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
body{
background-image:url("image/test.jpg");
background-size:cover;
}

</style>

<%

String stid=request.getParameter("stid");


String id=request.getParameter("id");


%>
<body>
<div>
<center><br><br>
<form action="staffmark.jsp" method="post">
 <input type="hidden" class="form-control" name="id" value="<%=id%>" id="exampleFormControlInput1" placeholder="staff id" style="width:200px;"required>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Student ID</label>
  <input type="text" class="form-control" name="studentid" value="<%=stid%>" id="exampleFormControlInput1" placeholder="staff id" style="width:200px;"required>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Mark</label><br>
  <input type="text"  name="mark" maxlength="2" id="exampleFormControlInput1" placeholder="Enter mark" style="width:50px;"required>
   / <input type="text"  name="tmark" value="100" id="exampleFormControlInput1" placeholder="staff id" style="width:50px;"required readonly>
 
</div>

<div class="mb-4">
<button type="submit" class="btn btn-primary" onclick="myFunction()">Submit</button>
</div>

</form>
</center>


</div>
</body>
<script>
function myFunction(){
	alert("Click Ok to Submit....!");
	
}

</script>
</html>