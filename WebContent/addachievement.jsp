<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    height: 100vh;
    background-color: steelblue;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: 'system-UI';
}

p {
    color: red;
    user-select: none;
}
#u1{
  margin-bottom: 10px;
  margin-top: -10px;
}

#u2{
  margin-bottom: 10px;
  margin-top: -10px;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 1420px;
    width: 420px;
    background-color: white;
    border: 2px solid #4158d0;
    border-radius: 23px;
    box-shadow: 2px 2px 10px black;
    margin-top:30px;
}

h2 {
    margin-bottom: 20px;
    font-size: 3rem;
    user-select: none;
    margin-top: -10px;
}


input {
    font-family: Arial, Helvetica, sans-serif;
    padding: 4px;
    margin: 5px;
    font-weight: bolder;
}

.input {
height:30px;
    width: 276px;
    padding: 13px;
    margin: 10px;
    font-size: 20px;
}

.input:focus {
    box-shadow: 1px 1px 1px rgb(80, 71, 71);
}

form {
margin-bottom:-500px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

input[type="submit"] {
    font-size: 23px;
    height: 50px;
    width: 120px;
    border: 2px solid #4158d0;
    border-radius: 8px;
    font-weight: bolder;
    background-color: steelblue;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
    cursor: pointer;
    margin-top: 25px;
}
input[type="file"] {
    height:50px;
    width: 276px;
    padding: 13px;
    margin: 10px;
    font-size: 20px;
}

input[type="submit"]:hover{
    background-color: transparent;
    color: #4158d0;
    border: 2px solid steelblue;
}

button:focus{
    outline: 1px solid rgb(29, 29, 148);
}

input::placeholder {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 20px;
    font-weight: bold;
    opacity: .8;
}

input::placeholder:focus {
    opacity: .9;
}
</style>
<body>
<%
String no=session.getAttribute("no").toString();
%>



<div class="container">
        <h2>Prize Details</h2>
        <form action="manualprizeadd" method="post" onsubmit="validateform()" enctype="multipart/form-data">
        Organizer Mail:
            <input class="input" type="text" name="orgmail"  id="uname" placeholder="User Name"><br>
            <p id="u1" class="error"></p>Event Name
            <input class="input" type="text" name="eventname"  id="pass" placeholder="Enter Password"><br>
            <p id="u2" class="error"></p>College Name:
            <input class="input" type="text" name="clgmail"  id="pass" placeholder="Enter Password"><br>
            <p id="u2" class="error"></p>Event Type:
            <input class="input" type="text" name="eventtype"  id="pass" placeholder="Enter Password"><br>
            <p id="u2" class="error"></p>Department:
            <input class="input" type="text" name="departemnt"  id="pass" placeholder="Enter Password"><br>
            <p id="u2" class="error"></p>Prize:
            <input class="input" type="text" name="prize"  value="<%=no%>" id="pass" placeholder="Enter Password"><br>
            <p id="u2" class="error"></p>Student Name:
            <input class="input" type="text" name="stuname" id="pass" placeholder="Enter student name"><br>
            <p id="u2" class="error"></p>College Name:
            <input class="input" type="text" name="colname" id="pass" placeholder="Enter college name"><br>
            <p id="u2" class="error"></p>Department:
            <input class="input" type="text" name="depart" id="pass" placeholder="Enter department"><br>
            <p id="u2" class="error"></p>Student Mail:
            <input class="input" type="text" name="stumail" id="pass" placeholder="Enter student mail"><br>
           
            <p id="u2" class="error"></p>Student image:
            <input class="input" type="file" name="image" id="pass" placeholder="choose image"><br>
            <p id="u2" class="error"></p>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
<script>
let username = document.getElementById('uname');
let password = document.getElementById('pass');

let flag = 1;

function validateform() {
    if (username.value == "") {
        document.getElementById('u1').innerHTML = "User Name is Empty";
        flag = 0;
    }
    else if (username.value.length < 3) {
        document.getElementById('u1').innerHTML = "User Name required minimum 3 characters";
        flag = 0;
    }
    else {
        document.getElementById('u1').innerHTML = " ";
    }
    if (password.value == "") {
        document.getElementById('u2').innerHTML = "Password is Empty";
        flag = 0;
    }
    else {
        document.getElementById('u2').innerHTML = " ";
    }
    if (flag) {
        return true;
    }
    else {
        return false;
    }
}</script>