<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>@import url("https://fonts.googleapis.com/css?family=Sen&display=swap");

html {
  box-sizing: border-box;
}

body {
  margin: 0;
  min-height: 100vh;
  font-family: Sen, sans-serif;
  letter-spacing: 2px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #1f2f38;
}

.container {
  width: 480px;
  height: 550px;
  background: #162730;
  display: flex;
  flex-direction: column;
  align-items: center;
  border-radius: 10px;
  box-shadow: 0 5px 30px 10px rgba(0, 0, 0, 0.8);
}

.container h1 {
  color: #e4e2e0;
  font-size: 40px;
  margin-top: 20px;
}

/* Form */
form {
  width: 90%;
}

.form-group {
  height: 65px;
}

label {
  position: relative;
  bottom: 3px;
  color: #e4e2e0;
}

input {
  width: 100%;
  height: 34px;
  padding: 5px;
  border: 1px solid #e4e2e0;
  border-radius: 5px;
  outline: none;
  box-sizing: border-box;
  transition: all 0.3s;
}

input:valid {
  border: 1px solid green;
}

input:invalid {
  border: 1px solid red;
}

button {
  cursor: pointer;
  color: #1f2f38;
  background: #e4e2e0;
  border: none;
  border-radius: 5px;
  height: 50px;
  width: 100%;
  font-family: Sen, sans-serif;
  font-size: 20px;
  letter-spacing: 2px;
  margin-top: 5px;
}

button:hover {
  filter: brightness(150%);
  background: #e4e2e0;
}

button:focus {
  outline: none;
}

.message-container {
  width: 90%;
  margin-top: 10px;
  display: flex;
  justify-content: center;
}
</style>
<body>
<div class="container">
<%String staf=request.getParameter("id"); 
String stid=session.getAttribute("stid").toString();%>
      <h1>CHAT HERE</h1>
      <!-- Form -->
      <form action="chatapp" method="post"> 
        <!-- Full Name -->
        <div class="form-group">
          <label for="name">Staff ID</label>
          <input
            type="text"
            id="name"
            name="name"
            value="<%=staf %>"
            placeholder=""
            required
        
            maxlength="100"
          />
        </div>
        <!-- Phone Number -->
        <div class="form-group">
          <label for="phone">Student ID</label>
          <input
            type="tel"
            id="phone"
            name="phone"
            value="<%=stid %>"
            placeholder="UK 11 Digits"
            required
           
            title="Please enter a valid UK phone number (11 digits)."
          />
        </div>
        <!-- Email Address -->
       

        <!-- Password -->
        <div class="form-group">
          <label for="password1">TEXT</label><br>
          <textarea
            type="password"
            id="password1"
            placeholder="let's Chat"
            required
           name="text"
            title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number."
          ></textarea>
        </div>
        <!-- Confirm Password -->
        
        <button type="submit">send</button>
      </form>
      <!-- Error/Success Message -->
      <div class="message-container">
        <h3 id="message"></h3>
      </div>
    </div>
</body>
</html><script>// Get references to the form, password fields, and message element
const form = document.getElementById("form");
const password1El = document.getElementById("password1");
const password2El = document.getElementById("password2");
const message = document.getElementById("message");

// Validate the form when it's submitted
function validateForm() {
  // Check if the form is filled out
  if (!form.checkValidity()) {
    message.textContent = "Please fill out all fields.";
    message.style.color = "red";
    return;
  }
  // Check if the password fields match
  if (password1El.value !== password2El.value) {
    message.textContent = "The passwords do not match.";
    message.style.color = "red";
    return;
  }
  // If the form is valid and the passwords match, display a success message
  message.textContent = "Registered Successfully!";
  message.style.color = "green";
}

// Store the form data in an object and log it to the console
function storeFormData() {
  const user = {
    name: form.name.value,
    phone: form.phone.value,
    email: form.email.value,
    website: form.website.value,
    password: form.password.value,
  };
  console.log(user);
}

// Listen for the form submit event
form.addEventListener("submit", (e) => {
  // Prevent the default form submit behavior
  e.preventDefault();
  // Validate the form
  validateForm();
  // If the form is valid, store the form data
  if (message.style.color === "green") {
    storeFormData();
  }
});
</script>