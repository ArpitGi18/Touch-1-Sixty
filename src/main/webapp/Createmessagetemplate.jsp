<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="dummy.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<form action="" method="get">
<div class="container">


<h4>Create New Message Template</h4><br>

<div class="row">
<div class="col-sm-12">
<label style="font-style: bold">Template ID*</label>
<div class="form-group">
     <input type="text" id="tid" class="form-control" name="templateid" aria-describedby="emailHelp" 
     required maxlength="19" onkeypress="length();">
     <small id="tidhelp" class="form-text text-muted"><b>(Please Enter 19 digit template id).</b></small>
  </div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
 <div class="form-group">
    <input type="checkbox" id="unicode" name="unicdoe" value="unicode">
  <label for="unicode">Unicode</label>
  </div>
 </div>
 </div> 

<div class="row">
<div class="col-sm-12">
 <div class="form-group">
 <label>Message*</label>
    <textarea class="form-control" id="message" name ="message" rows="4" placeholder="Type your message text here..." required></textarea>
    <small id="mtxt" class="form-text text-muted"><b>0 of 1500 Characters Used (1 SMS)</b></small>
  </div>
 </div> 
</div>


<div class="row">
<div class="col-sm-12">
 <div class="form-group">
   <button type="button" class="btn btn-danger" onclick="length()">Reset Form</button>
   <button type="submit" class="btn btn-success" onclick="length();">Create Template</button>
  </div>
 </div> 
 </div>

<button type="button" onclick="length()">Click</button>

</div>
</form>

</body>
</html>