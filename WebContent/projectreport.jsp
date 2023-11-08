<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.11.0/sweetalert2.all.min.js"></script>
</head>
<style>
body{
background-image:url("image/test.jpg");
background-size:cover;
}

</style>
 <%String stid=session.getAttribute("stid").toString();%>
 <%String sdept=session.getAttribute("stdept").toString();%> 

<body>
<div>
<center><br><br>
<form action="projServlet" method="post" enctype="multipart/form-data">


<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Department</label>
  <input type="text" class="form-control" name="dept" value="<%=sdept%>" id="exampleFormControlInput1" placeholder="Student ID" style="width:300px;"required>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Student ID</label>
  <input type="text" class="form-control" name="studentid" value="<%=stid%>" id="exampleFormControlInput1" placeholder="Student ID" style="width:300px;"required>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Review</label>
  <select id="exampleFormControlInput1" name="review" class="form-control" style="width:300px;">
  <option value="0th Review">0th Review</option>
  <option value="1st Review">1st Review</option>
  <option value="2nd Review">2nd Review</option>
  <option value="Final Review">Final Review</option>
</select>
</div>



<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Project Title</label>
  <input type="text" class="form-control" name="projtitle" value="" id="exampleFormControlInput1" placeholder="Title" style="width:300px;"required>
</div>

<div class="mb-3">
  <label for="exampleFormControlInput1" class="form-label">Document</label>
  <input type="file" class="form-control" id="exampleFormControlInput1"  name="filename" placeholder="name@example.com" style="width:300px;" required>
</div>
<div class="mb-4">
<button type="submit" class="btn btn-primary" onclick="myFunction()" >Submit</button>
</div>

</form>
</center>


</div>
</body>
<script>
function myFunction(){
	alert("Click ok to Upload..")
	
	
}

</script>
</html>