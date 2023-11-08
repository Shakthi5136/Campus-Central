<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
<style>{
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
    text-transform: capitalize;
}
body{
    background-color: #ddd;
    background-image:url("image/n12.jpg");
    background-size:cover;
}
.form{
    display: flex;
    justify-content: center;
    gap: 20px;
}
.column1 input,.column2 input,.column2 textarea{
    border: none;
    border-bottom: solid 1px rgba(0, 0, 0, 0.3);
    padding: 15px;
    margin-left: 10px;
    margin-bottom: 30px;
    display: block;
    width: 350px;
}
.column1 label,.column2 label{
    display: inline-block;
    margin-left: 10px;
    margin-bottom: 10px;
    font-weight: bold;
}
input[type="submit"]{
    color: white;
    text-align: center;
    font-size: larger;
    background-color: #009688;
    border: none;
    width: 131px;
    margin-left: 560px;
    height: 50px;
    border-radius: 5px;
    cursor: pointer;
}
input[type="submit"]:hover{
    border: solid #009688 1px;
    background-color: white;
    color: #009688;
}
.UN{
color:white;}
</style>
</head>
<% String depart=session.getAttribute("dept").toString(); %>
<body>
<form action="staffreg" method="post">
<div class="form">
        <div class="column1">
          <%String clg=session.getAttribute("clg").toString(); %>
           <br><br><br><br>
            <label>Staff Name</label>
            <input type="text" placeholder="Staff name " name="name" id="UN" required>
           
            <label>College Name</label>
            <input type="text" placeholder="College" value="<%=clg %>" name="college" id="UN" required>
           
           
            <label>Staff Email</label>
            <input type="mail" placeholder="Staff name " name="mail" id="UN" required>
           
           
        
           <label>Staff ID</label>
            <input type="text" placeholder="StaffId" name="stafid" required>
            <label>Staff Department</label>
            <input type="text" placeholder="typa a valid email" value="<%=depart %>" name="depart" id="e" required>
            <label>Staff Mobile </label>
            <input type="tel" name="mobile" placeholder="mobile number" id="Phone-num">
        </div>
        
    </div>
    <input type="submit" value="ADD STAFF"  onclick="myFunction()">
                                         </form>
                                         </body>
                                          <script>
function myFunction() {
  alert("Staff Added    ");
}
</script>
                                          </html>
