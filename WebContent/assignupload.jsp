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
 <%String stid=session.getAttribute("stid").toString(); %> 
<%

String staff=request.getParameter("staffid");
String assign=request.getParameter("assign");
String sub=request.getParameter("sub");
String id=request.getParameter("id");
String ques=request.getParameter("ques");

%>
<body>
<div>
<center><br><br>
<form action="Testpaperservlet" method="post" enctype="multipart/form-data">

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Student ID</label>
  <input type="text" class="form-control" name="studentid" value="<%=stid%>" id="exampleFormControlInput1" placeholder="staff id" style="width:300px;"required readonly>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Staff ID</label>
  <input type="text" class="form-control" name="staffid" value="<%=staff%>" id="exampleFormControlInput1" placeholder="staff id" style="width:300px;"required readonly>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Subject</label>
  <input type="text" class="form-control" name="subject" value="<%=sub%>" id="exampleFormControlInput1" placeholder="subject" style="width:300px;"required readonly>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Test desc</label>
  <input type="text" class="form-control" name="description" value="<%=assign %>" id="exampleFormControlInput1" placeholder="subject" style="width:300px;"required readonly>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Quetion Name</label>
  <input type="text" class="form-control" name="qname" value="<%=ques %>" id="exampleFormControlInput1" placeholder="subject" style="width:300px;"required readonly>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Test Paper</label>
  <input type="file" class="form-control" id="exampleFormControlInput1"  name="filename" placeholder="name@example.com" style="width:300px;" required readonly>
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