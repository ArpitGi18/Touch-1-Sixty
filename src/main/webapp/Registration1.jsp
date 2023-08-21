<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<meta charset="ISO-8859-1">
<title>Log In</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body
{
background-image: url("Images/Background%20image.png");
background-size: cover;
}
</style>
</head>
<body>
<%!String pass;
String rpass; %>
<form method="get" action="Registrationservlet" name="form">
<div class="container" style="background-color:white; width:27%; border-radius:10px 10px 10px 10px;">
  <div class="row">
    <div class="col-sm-12">
      <img src="Images/ResizedLogo.png" style="height:80%;">
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-12">
    <center>
      <p>Fill the form below to create your account</p><br>
     </center>
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-12">
      
        <input type="text" class="form-control" id="fullname" placeholder="Full Name" name="fullname">
        </div>  
    </div><br>
  
  <div class="row">
    <div class="col-sm-12">
          <input type="text" class="form-control" id="email" placeholder="Your email address" name="email"> 
    </div>
  </div><br>
  
  <div class="row">
    <div class="col-sm-12">
      <div class="input-group">  
       
          <input type="text" class="form-control" id="mobilenumber" placeholder="Mobile Number(include country code)" name="mobilenumber">
          <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
          <i class="fa-solid fa-mobile-screen"></i>
           </button></div>
        </div> 
        </div>
    
  </div><br>
  
  <div class="row">
    <div class="col-sm-12">
      <div class="input-group">
          <input type="password" class="form-control" id="password1" placeholder="Password" name="password">
          <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
          <i class="fa-solid fa-lock"></i></button>
        </div>
    </div>
  </div>
  </div><br>
  
  <div class="row">
    <div class="col-sm-12">
      <div class="input-group">
          <input type="password" class="form-control" id="repassword" placeholder="Re-type Password" name="retypepassword">
          <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
          <i class="fa-solid fa-lock"></i></button>
        </div>
        
        </div>
    </div>
  </div><br>
  
  <div class="row">
    <div class="col-sm-12">
    <center>
      <button type="submit" class="btn btn-success">Sign Up Now</button>
     </center> 
    </div>
  </div><br>
  
  <div class="row">
    <div class="col-sm-12">
      <a href="Bootstraplogin1.jsp" style="color: blue;">Already have an account?</a>
    </div>
  </div><br>
  
</div>
</form>

<%
try{
pass=request.getParameter("password");
rpass=request.getParameter("retypepassword");
  if(pass.equals(rpass))
  {
	  response.sendRedirect("Activateaccount.jsp");
  }
  else
  {
	  %>
	  <jsp:include page="Modal.jsp"></jsp:include>
	  <%
  }
}
catch(Exception ex)
{
	
}
  %>


</body>
</html>