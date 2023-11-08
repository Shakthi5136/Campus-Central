<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>@import url("https://fonts.googleapis.com/css2?family=Nixie+One&display=swap");

body {
  height: 100vh;
  margin: 0;
  display: grid;
  place-items: center;
  background: url("https://images.unsplash.com/photo-1495583237039-44cb1143f0b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
    no-repeat center center fixed;
  background-size: cover;
  font-family: "Nixie One", cursive, sans-serif;
  text-shadow: 2px 2px 5px rgba(0, 53, 102, 1);
}

.bg,
.login_signup_form {
  position: absolute;
  height: 38em;
  width: 30%;
  transition-duration: 1s;
  transform-style: preserve-3d;
  text-align: center;
}

.bg {
  background-color: rgba(255, 255, 255, 0.5);
  box-shadow: 0 0 10px rgba(0, 53, 102, 1);
  overflow: hidden;
  z-index: -1;
}

.bg-item {
  position: absolute;
  width: 50%;
  height: 150%;
  top: 20%;
}

.bg-item:nth-child(1) {
  background-color: rgba(0, 53, 102, 0.8);
  width: 80%;
  left: -10%;
  rotate: -45deg;
}
.bg-item:nth-child(2) {
  background-color: rgba(255, 255, 255, 0.8);
  left: -10%;
  rotate: 80deg;
}
.bg-item:nth-child(3) {
  background-color: rgba(0, 53, 102, 1);
  width: 80%;
  left: 80%;
  top: -10%;
  rotate: 40deg;
}
.bg-item:nth-child(4) {
  background-color: rgba(0, 53, 102, 0.8);
  left: -40%;
  top: -80%;
  rotate: 70deg;
}

.signup {
  transform: rotateY(-180deg);
}

svg {
  height: 50px;
  width: 50px;
  margin-top: 8%;
}

svg path {
  fill: white;
}

.user path {
  fill: rgba(0, 53, 102, 1);
}
.fb svg:hover path {
  fill: rgb(27, 116, 228);
}
.google-plus svg:hover path {
  fill: rgb(219, 71, 59);
}
.twitter svg:hover path {
  fill: rgb(29, 161, 242);
}

h2,
input,
.remember_me:hover,
.forget-password a:hover,
.term_conditions_checkbox a,
button {
  color: rgba(0, 53, 102, 1);
}

h2 {
  margin: 0;
  margin-top: 10px;
  margin-bottom: 10px;
  font-size: 2em;
  letter-spacing: 4px;
  text-transform: uppercase;
  text-shadow: none;
}

input {
  width: 80%;
  height: 20px;
  background-color: rgba(248, 249, 250, 0.5);
  border: none;
  border-radius: 50px;
  margin-bottom: 1em;
  font-family: "Nixie One", cursive, sans-serif;
  font-weight: bold;
  font-size: 1.2em;
  letter-spacing: 1.8px;
  text-align: center;
  padding: 10px;
}

input:focus {
  background-color: transparent;
  outline: 1px solid rgba(0, 53, 102, 1);
}

#login_password,
#confirm_password {
  margin-bottom: 0;
}

input[type="checkbox"] {
  height: auto;
  width: auto;
  margin: 0;
  outline: none;
}

.checkbox {
  margin: 20px;
  font-weight: bold;
  color: white;
}

.checkbox label,
input[type="checkbox"] {
  cursor: pointer;
}

.forget-password a {
  margin-left: 2em;
  text-decoration: none;
  color: white;
}

.term_conditions_checkbox a {
  font-size: 1.2em;
}

.term_conditions_checkbox a:hover {
  color: white;
  text-decoration: underline;
}

h4 {
  color: white;
}

h4 span {
  text-decoration: none;
  color: #eeba0b;
  font-size: 1.5em;
  cursor: pointer;
}

h4 span:hover {
  color: white;
}

button {
  width: 100px;
  height: 40px;
  text-transform: uppercase;
  cursor: pointer;
  background-color: rgba(248, 249, 250, 0.5);
  border: none;
  box-shadow: 0 0 25px rgba(0, 53, 102, 1);
  font-size: 1.2em;
}

button:hover {
  color: white;
  background-color: rgba(0, 53, 102, 1);
  box-shadow: 0 0 25px white, 0 0 50px white;
}

.social-media span {
  margin-left: 5%;
  margin-right: 5%;
}

.social-media a {
  text-decoration: none;
}

.social-media span svg {
  margin-top: 0%;
}

.hidden {
  display: none;
}

@media screen and (max-width: 360px) {
  .login_signup_form,
  .bg {
    width: 100%;
    height: 100%;
    border-radius: 0%;
  }
}
@media screen and (min-width: 361px) and (max-width: 576px) {
  .login_signup_form,
  .bg {
    width: 80%;
  }
}

@media screen and (min-width: 577px) and (max-width: 748px) {
  .login_signup_form,
  .bg {
    width: 60%;
  }
}

@media screen and (min-width: 749px) and (max-width: 992px) {
  .login_signup_form,
  .bg {
    width: 50%;
  }
}

@media screen and (min-width: 993px) and (max-width: 1200px) {
  .login_signup_form,
  .bg {
    width: 40%;
  }
}</style>
<body>
<!-- Hey! Everyone, here the icons that I have used is from iconmonstr, please check them out. Here is the link https://iconmonstr.com/ -->
    <div class="bg">
        <span class="bg-item"></span>
        <span class="bg-item"></span>
        <span class="bg-item"></span>
        <span class="bg-item"></span>
    </div>
    <div style="margin-top:130px;" class="login_signup_form">
        <div class="login">
            <svg class="user" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path
                    d="M12 2c2.757 0 5 2.243 5 5.001 0 2.756-2.243 5-5 5s-5-2.244-5-5c0-2.758 2.243-5.001 5-5.001zm0-2c-3.866 0-7 3.134-7 7.001 0 3.865 3.134 7 7 7s7-3.135 7-7c0-3.867-3.134-7.001-7-7.001zm6.369 13.353c-.497.498-1.057.931-1.658 1.302 2.872 1.874 4.378 5.083 4.972 7.346h-19.387c.572-2.29 2.058-5.503 4.973-7.358-.603-.374-1.162-.811-1.658-1.312-4.258 3.072-5.611 8.506-5.611 10.669h24c0-2.142-1.44-7.557-5.631-10.647z" />
            </svg>
            <h2>HOD Log In</h2>
            <form action="hodlogin" method="post">
                <input type="text" id="login_username" name="name" placeholder="login_username"  required>
                 <input type="text" id="login_username" name="college" placeholder="College Name"  required>
               <input type="password" id="login_password" name="pass" placeholder="login_password" required>
                <div class="checkbox">
                    <label for="remember_me_checkbox" class="remember_me"> </label>
                    <span class="forget-password"><a href="#"></a></span>
                </div>
                <div><button>Log in</button></div>
            </form>
           <!--  <h4>or login using</h4>
            <div class="social-media">
                <span class="fb">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2 10h-2v2h2v6h3v-6h1.82l.18-2h-2v-.833c0-.478.096-.667.558-.667h1.442v-2.5h-2.404c-1.798 0-2.596.792-2.596 2.308v1.692z" />
                        </svg>
                    </a>
                </span>
                <span class="google-plus">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2.5 11.5v1.2h1.985c-.08.514-.601 1.51-1.985 1.51-1.194 0-2.17-.99-2.17-2.21s.976-2.21 2.17-2.21c.681 0 1.135.29 1.396.541l.949-.916c-.61-.57-1.401-.915-2.345-.915-1.936 0-3.5 1.565-3.5 3.5s1.564 3.5 3.5 3.5c2.02 0 3.359-1.419 3.359-3.419 0-.23-.024-.405-.055-.58h-3.304zm0 0 8.5 1h-1.5v1.5h-1v-1.5h-1.5v-1h1.5v-1.5h1v1.5h1.5v1z" />
                        </svg>
                    </a>
                </span>
                <span class="twitter">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm6.5 8.778c-.441.196-.916.328-1.414.388.509-.305.898-.787 1.083-1.362-.476.282-1.003.487-1.564.597-.448-.479-1.089-.778-1.796-.778-1.59 0-2.758 1.483-2.399 3.023-2.045-.103-3.86-1.083-5.074-2.572-.645 1.106-.334 2.554.762 3.287-.403-.013-.782-.124-1.114-.308-.027 1.14.791 2.207 1.975 2.445-.346.094-.726.116-1.112.042.313.978 1.224 1.689 2.3 1.709-1.037.812-2.34 1.175-3.647 1.021 1.09.699 2.383 1.106 3.773 1.106 4.572 0 7.154-3.861 6.998-7.324.482-.346.899-.78 1.229-1.274z" />
                        </svg>
                    </a>
                </span> -->
           <!--  </div>
            <h4>New Here? <span class="register-btn">Register Now!</span></h4>
        </div> -->
        <div class="signup hidden">
            <svg class="user" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path
                    d="M12 2c2.757 0 5 2.243 5 5.001 0 2.756-2.243 5-5 5s-5-2.244-5-5c0-2.758 2.243-5.001 5-5.001zm0-2c-3.866 0-7 3.134-7 7.001 0 3.865 3.134 7 7 7s7-3.135 7-7c0-3.867-3.134-7.001-7-7.001zm6.369 13.353c-.497.498-1.057.931-1.658 1.302 2.872 1.874 4.378 5.083 4.972 7.346h-19.387c.572-2.29 2.058-5.503 4.973-7.358-.603-.374-1.162-.811-1.658-1.312-4.258 3.072-5.611 8.506-5.611 10.669h24c0-2.142-1.44-7.557-5.631-10.647z" />
            </svg>
            <h2>Sign Up</h2>
            <form action="#" method="post">
                <input type="text" id="signup_username" name="signup_username" placeholder="Username" required>
                <input type="password" id="signup_password" name="signup_password" placeholder="Password" required>
                <input type="password" id="confirm_password" name="confirm_password" placeholder="Confirm Password"
                    required>
                <div class="checkbox">
                    <label for="term_conditions_checkbox" class="term_conditions_checkbox"><input type="checkbox"
                            id="term_conditions_checkbox"> I agree
                        to
                        the <a href="#">terms of services</a> and <a href="#">privacy policy</a>
                    </label>
                </div>
                <div><button>Sign up</button></div>
            </form>

            <h4>or login using</h4>
            <div class="social-media">
                <span class="fb">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2 10h-2v2h2v6h3v-6h1.82l.18-2h-2v-.833c0-.478.096-.667.558-.667h1.442v-2.5h-2.404c-1.798 0-2.596.792-2.596 2.308v1.692z" />
                        </svg>
                    </a>
                </span>
                <span class="google-plus">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm-2.5 11.5v1.2h1.985c-.08.514-.601 1.51-1.985 1.51-1.194 0-2.17-.99-2.17-2.21s.976-2.21 2.17-2.21c.681 0 1.135.29 1.396.541l.949-.916c-.61-.57-1.401-.915-2.345-.915-1.936 0-3.5 1.565-3.5 3.5s1.564 3.5 3.5 3.5c2.02 0 3.359-1.419 3.359-3.419 0-.23-.024-.405-.055-.58h-3.304zm0 0 8.5 1h-1.5v1.5h-1v-1.5h-1.5v-1h1.5v-1.5h1v1.5h1.5v1z" />
                        </svg>
                    </a>
                </span>
                <span class="twitter">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                            <path
                                d="M12 2c5.514 0 10 4.486 10 10s-4.486 10-10 10-10-4.486-10-10 4.486-10 10-10zm0-2c-6.627 0-12 5.373-12 12s5.373 12 12 12 12-5.373 12-12-5.373-12-12-12zm6.5 8.778c-.441.196-.916.328-1.414.388.509-.305.898-.787 1.083-1.362-.476.282-1.003.487-1.564.597-.448-.479-1.089-.778-1.796-.778-1.59 0-2.758 1.483-2.399 3.023-2.045-.103-3.86-1.083-5.074-2.572-.645 1.106-.334 2.554.762 3.287-.403-.013-.782-.124-1.114-.308-.027 1.14.791 2.207 1.975 2.445-.346.094-.726.116-1.112.042.313.978 1.224 1.689 2.3 1.709-1.037.812-2.34 1.175-3.647 1.021 1.09.699 2.383 1.106 3.773 1.106 4.572 0 7.154-3.861 6.998-7.324.482-.346.899-.78 1.229-1.274z" />
                        </svg>
                    </a>
                </span>
            </div>
            <h4>Old Friend? <span class="login-btn">Login Here!</span></h4>
        </div>
    </div>
</body>
</html>
<script>const login_signup_form = document.querySelector(".login_signup_form");
const login = document.querySelector(".login");
const signup = document.querySelector(".signup");
const signupBtn = document.querySelector(".register-btn");
const loginBtn = document.querySelector(".login-btn");
const bg = document.querySelector(".bg");

const loginFormFlip = () => {
  signupBtn.addEventListener("click", () => {
    setTimeout(() => {
      login.classList.add("hidden");
      signup.classList.remove("hidden");
    }, 300);
    bg.style.transform = "rotateY(180deg)";
    login_signup_form.style.transform = "rotateY(180deg)";
  });

  loginBtn.addEventListener("click", () => {
    setTimeout(() => {
      signup.classList.add("hidden");
      login.classList.remove("hidden");
    }, 300);
    bg.style.transform = "rotateY(0deg)";
    login_signup_form.style.transform = "rotateY(0deg)";
  });
};

loginFormFlip();</script>