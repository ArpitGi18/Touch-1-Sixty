<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Campaign</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<form action="NewGroupServlet" method="post">
<div class="container">


<div class="row">
<div class="col-sm-12" style="border: solid black 0.5px; border-top-color: sky blue">

<div class="row">
<div class="col-sm-12">
<h3 style="font-style: bold;">Create New Group</h3>
</div>
</div>

<div class="row">

<div class="col-sm-2">
<div class="form-group">
    <label for="exampleInputEmail1" id="gname" >Group Name*</label>
</div>
</div>

<div class="col-sm-6">
<div class="form-group">
<input type="text" id="gname" name="gname" placeholder="Name your new campaign" class="form-control" required>
</div>
</div>

</div>

<div class="row">

<div class="col-sm-2">
<div class="form-group">
    <label for="exampleInputEmail1" id="cname" >Description</label>
</div>
</div>

<div class="col-sm-6">
<div class="form-group">
<input type="text" id="desc" name="desc" class="form-control">
</div>
</div>

</div>

<div class="row">

<div class="col-sm-2">
<div class="form-group">
    <label for="exampleInputEmail1" id="mnum" >Add mobile Numbers to Group</label>
</div>
</div>

<div class="col-sm-6">
<div class="form-group">
<input type="text" id="desc" name="mnumber" class="form-control" >
<small style="font-style: bold;" id="numberhelp" class="form-text text-muted">(Enter mobile number and seperated by comma).</small>
</div>
</div>

</div>

<div class="row">

<div class="col-sm-2">
<div class="form-group">
    <label for="exampleInputEmail1" id="numberfileupload" >Upload mobile number from file Group</label>
</div>
</div>

<div class="col-sm-6">
<div class="form-group">
<input type="file" id="file" name="file">
<small style="font-style: bold;" id="numberhelp" class="form-text text-muted">(Upload Mobile Number with line Terminated recipients in Text/CSV file).</small>
</div>
</div>

</div>

<div class="row">
<div class="col-sm-12">
 <div class="form-group">
   <button type="reset" class="btn btn-danger">Cancel Group</button>
   <button type="submit" class="btn btn-success">Create Group</button>
  </div>
 </div>
</div>
</div>


</div>
</div>
</form>
</body>
</html>