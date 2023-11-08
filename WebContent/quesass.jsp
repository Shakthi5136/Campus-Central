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
background-image:url("image/7.jpg");
background-size:cover;
}

</style>
<%String staf=session.getAttribute("stafid").toString(); %>
<%String dept=session.getAttribute("sdept").toString(); %>
<body>
<div>
<center><br><br>
<form action="assignment" method="post" enctype="multipart/form-data">

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Staff ID</label>
  <input type="text" class="form-control" name="studentid" value="<%=staf%>" id="exampleFormControlInput1" placeholder="staff id" style="width:300px;">
</div>

<%-- <div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Staff ID</label>
  <input type="text" class="form-control" name="studentid" value="<%=%>" id="exampleFormControlInput1" placeholder="staff id" style="width:300px;">
</div> --%>

<div class=" mb-3">
    <label for="exampleFormControlInput1" class="form-label">Assignment</label><br>
  
  <select class="custom-select" name="assignment" id="inputGroupSelect01" style="width:300px;">
    <option selected>Choose...</option>
    <option value="Assignment">Assignment</option>
    <option value="Question paper">Question paper</option>
  
  </select>
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Subject</label>
  <input type="text" class="form-control" name="subject" id="exampleFormControlInput1" placeholder="subject" style="width:300px;">
</div>
<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Question</label>
  <input type="file" class="form-control" id="exampleFormControlInput1"  name="filename" placeholder="name@example.com" style="width:300px;">
</div>
<div class="mb-4">
<button type="submit" class="btn btn-primary" onclick="myFunction()">Upload</button>
</div>

</form>
</center>


</div>
</body>
<script>
function myFunction(){
	alert("Click OK to add....!");
	
}

</script>
</html>