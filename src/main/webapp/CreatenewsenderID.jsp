<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<form action="NewsenderIDServlet" method="get">
<div class="container">


<h4>Create New SenderID</h4><br>

<div class="row">
<div class="col-sm-12">
<label style="font-style: bold">SenderID Type</label>
<div class="form-group">
    <select class="form-control" name="sidtype" id="route">
    <option value="Transactional">Transactional</option>
    <option value="Promotional">Promotional</option>
  </select>
  </div>
</div>
</div>


<div class="row">
<div class="col-sm-12">
<label style="font-style: bold">SenderID</label>
<div class="form-group">
    <input type="text" class="form-control" name="sidname" aria-describedby="emailHelp" placeholder="Name your new SenderID">
  </div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
<label style="font-style: bold">Purpose</label>
<div class="form-group">
    <textarea class="form-control" id="exampleFormControlTextarea1" name ="purpose" rows="4" placeholder="Type your message text here..."></textarea>
  </div>
</div>
</div>

<div class="row">
<div class="col-sm-12">
 <div class="form-group">
   <button type="submit" class="btn btn-danger">Reset Form</button>
   <button type="submit" class="btn btn-success">Create</button>
  </div>
 </div> 
 </div>


</div>
</form>

</body>
</html>