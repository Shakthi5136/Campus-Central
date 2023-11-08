<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
@import url('https://fonts.googleapis.com/css?family=Montserrat:400,500&display=swap');

body {
	font-family: Montserrat,Arial, Helvetica, sans-serif;
	background-color:#f7f7f7;
}
* {box-sizing: border-box}

/* Add padding to container elements */
.container {
    padding: 20px;
      width:500px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
      border:1px solid #ccc;
      border-radius:10px;
      background:white;
  -webkit-box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
  -moz-box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
  box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
  }

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f7f7f7;
	font-family: Montserrat,Arial, Helvetica, sans-serif;
}
select {
  width: 18%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f7f7f7;
	font-family: Montserrat,Arial, Helvetica, sans-serif;
}

input[type=phone] {
  width: 81%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f7f7f7;
}

input[type=text]:focus, input[type=password]:focus, input[type=phone]:focus, select:focus {
  background-color: #ddd;
  outline: none;
}



/* Set a style for all buttons */
button {
  background-color: #0eb7f4;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
	font-size:16px;
	font-family: Montserrat,Arial, Helvetica, sans-serif;
	border-radius:10px;
}

button:hover {
  opacity:1;
}


/* Change styles for signup button on extra small screens */
@media screen and (max-width: 300px) {
  .signupbtn {
     width: 100%;
     padding-down:5px;
  }
}

.youtubeBtn{
    position: fixed;
    right: 20px;
  transform:translatex(-50%);
    top: 20px;
    cursor: pointer;
    transition: all .3s;
    vertical-align: middle;
    text-align: center;
    display: inline-block;
  background:#000;
  padding:2px 10px;
  border-radius:5px;
}
.youtubeBtn i{
   font-size:20px;
  float:left;
}
.youtubeBtn a{
    color:#ff0000;
    animation: youtubeAnim 1000ms linear infinite;
  float:right;
}
.youtubeBtn a:hover{
  color:#c9110f;
  transition:all .3s ease-in-out;
}
.youtubeBtn i:active{
  transform:scale(.9);
  transition:all .3s ease-in-out;
}
.youtubeBtn span{
    font-family: 'Lato';
    font-weight: bold;
    color: #fff;
    display: block;
    font-size: 12px;
    float: right;
    line-height: 20px;
    padding-left: 5px;
  
}

@keyframes youtubeAnim{
  0%,100%{
    color:#c9110f;
  }
  50%{
    color:#ff0000;
  }
}


</style>
<body>



    <form action="addproduct" method="post" enctype="multipart/form-data">
        <div class="container">
          <h1>Add Leader</h1>
            <label for="email"><b>Student name</b></label>
            <input type="text" name="productname"  placeholder="Enter Student Name" required>
            
              <label for="email"><b>Student ID</b></label>
            <input type="text" name="productname" placeholder="Enter Student ID" required>
            
              <label for="email"><b>Student Department</b></label>
            <input type="text" name="productname"   placeholder="Enter Department" required>
            
     
            <!--  <label for="email"><b>Mark:</b></label>
            <input id="" type="radio" name="producttype" value="mobile"/>
                        <label for="mobile">Mobile</label>
                               
            <input id="" type="radio" name="product_type" value="headset"/>
                        <label for="mobile">Headset</label> -->
                                            
           
              <label for="email"><b>Mark</b></label>
            <input type="text" name="productname" placeholder="Enter Mark" required>
            
            
         <!--  <label for="email"><b>Warrenty</b></label>
          <input type="text" placeholder="Enter warrenty" name="warrenty" required>
          
          
          <label for="psw"><b>Cost</b></label>
          <input type="text" placeholder="Enter Cost" name="cost" required>
     
     <label for="psw"><b>About Product</b></label>
          <input type="text" placeholder="About product" name="aboutpro" required>
          
      -->
            <div> 
           <label for="psw"><b>Student Image</b></label>
          <input type="file" name="image" required>
           </div>
        
          
      
          <div class="clearfix">
      
            <button type="submit" class="btn">Submit</button>
          </div>
        </div>
      </form>

  <div class="youtubeBtn">
  <a target="_blank" href="https://www.youtube.com/watch?v=7k8kKRQa9jY">
      
  <i class="fab fa-youtube"></i>
    </a>

</div>
</body>
</html>
</body>
</html>