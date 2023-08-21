<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
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
<form method="post" action="Registrationservlet" name="form">
<div class="container" style="background-color:white; width:27%; border-radius:10px 10px 10px 10px;">
  <div class="row">
    <div class="col-sm-12">
      <img src="Images/ResizedLogo.png" style="height:80%;">
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-12">
    <center>
      <p>Please enter the activation code sent to your phone to complete your registration</p><br>
     </center>
    </div>
  </div>
  
  <div class="row">
    <div class="col-sm-12">
        <div class="input-group">
    <input type="number" min="1" max="9" class="form-control" id="code" placeholder="Code" name="code" >   
          <div class="input-group-btn">
                <button class="btn btn-default" type="submit">
          <i class="fa-solid fa-lock"></i></button>
          </div>           
        </div>  
    </div>
    </div>
    <br>
    
    <div class="row">
    <div class="col-sm-12">
    <center>
          <button type="submit" class="btn btn-success">Activate account</button></center>
          </div>
        </div>
        <br>
    </div>
</form> 
</body>
</html>