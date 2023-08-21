<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<script>
function myFunction() {
  var x = document.getElementById("ps");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<%! String s1, s2,s3;%>
<%
try{
s1=request.getParameter("msg");
s2=session.getAttribute("Recover").toString();
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<form method="post" action="Register">
<div class="container" style="background-color: white; width:27%; border-radius:10px 10px 10px 10px;">
  <div class="row">
    <div class="col-sm-12">
    <img src="Images/ResizedLogo.png">
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-12">
    <center>
    <%
    if(s1!=null)
    {
    	s3=s1;
    }
    if(s2!=null)
    {
    	s3=s2;
    }
    
    %>
    <%=s3%>
    </center>
    </div>
    </div>
  
  <div class="row">
    <div class="col-sm-12">
        <div class="input-group">  
       
          <input type="text" class="form-control" id="un" placeholder="Username" name="un">
          <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
           <i class="fa-solid fa-user"></i>
           </button></div>
        </div><br>  
        
        <div class="input-group">
          <input type="password" class="form-control" id="ps" placeholder="Password" name="pass">
          <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
          <i class="fa-solid fa-lock"></i></button>
        </div>
        </div><br>
   </div>
  </div> 
  
       
   <div class="row">
     <div class="col-sm-6">
       <a href="Forgotpassword.html">Forgot Password?</a>      
     </div>
     
     <div class="col-sm-6">
       <a href="#" onclick="myFunction(); return false;">Show Password</a>    
     </div>
   </div>  <br>
   
   <div class="row">
     <div class="col-sm-6">
     <a href="Registration1.jsp" class="btn btn-default" role="button">Register</a>
     </div>
     
     <div class="col-sm-6">
     <button type="submit" class="btn btn-danger">Sign In</button>
     </div>
   </div><br> 
</div>
</form>
</body>
</html>