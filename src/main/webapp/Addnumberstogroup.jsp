<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add number to group</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<form action="addnumbertogroupservlet" method="post">
<div class="container">

<h2>Add numbers to Group</h2>

<div class="row">
<div class="col-sm-12" style="border: solid black 0.5px; border-top-color: sky blue">

<div class="row" style="margin-top: 20px;">
<div class="col-sm-2">
<div class="form-group">
    <label for="tid">Select Group Details</label>
  </div>
 </div>  
 
 <div class="col-sm-6">
 <div class="form-group">
    <select name="gname" id="gname" >
    <option id="option" value="select">Select</option>

    <%    
    //String ro1=request.getParameter("route");
    String url1="jdbc:mysql://localhost:3306/newgroup";
	String uname1="root";
	String pass1 ="360@Logica";
	String query1 ="select * from newgroup";
	//System.out.println(ro);
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Statement stmt1;
	
	try {
		Connection connection=DriverManager.getConnection(url1,uname1,pass1);
		stmt1 = connection.createStatement();
	    ResultSet rs1= stmt1.executeQuery(query1);
	    
	    while(rs1.next())
	    {
	    	%>
	    	<option><%=rs1.getString("groupname") %></option>
	    	<%
	    }  
	}
	catch(Exception ex)
	{
	out.println(ex);
	}
    %>   
  </select>
  </div>
 </div> 

   
</div> 

<div class="row">

<div class="col-sm-2">
<div class="form-group">
    <label for="exampleInputEmail1" id="cname" >Add mobile Numbers to Group</label>
</div>
</div>

<div class="col-sm-6">
<div class="form-group">
<input type="text" id="mnumber" name="mnumber" class="form-control">
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
   <button type="reset" class="btn btn-danger">Cancel</button>
   <button type="submit" class="btn btn-success">Add Number to Group</button>
  </div>
 </div>
</div>
</div>


</div>
</div>
</form>
</body>
</html>