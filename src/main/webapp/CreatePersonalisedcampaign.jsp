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
<form action="imageupload" method="post" name="campaignform" enctype="multipart/form-data">
<div class="container">

<div class="row">
<div class="col-sm-12">
<h2 style="font:bold;">Create New Campaign</h2>
</div>
</div>

<div class="row" >
<div class="col-sm-7" style="border: 1px solid black;border-top: 2px solid skyblue;">
<h4 style="font:bold;">Campaign Setup</h4>



<div class="row">
<div class="col-sm-3">
<div class="form-group">
    <label for="exampleInputEmail1" id="cname" >Campaign Name*</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <input type="email" class="form-control" name="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name your new campaign" required>
  </div>
 </div> 
   
</div>    

<div class="row">
<div class="col-sm-12">
<h4 style="font:bold;">Recipient Source</h4>
</div>
</div>

<div class="row">
<div class="col-sm-3">
<div class="form-group">
    <label for="myfile">Upload Text File</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <input type="file" class="form-control" id="myfile" name="myfile" aria-describedby="myfile">
    <small id="emailHelp" class="form-text text-muted">(Upload Mobile Number with line terminated recipients in Text/CSV File).</small>
  </div>
 </div> 
   
</div>     

<div class="row">
<div class="col-sm-3">
<div class="form-group">
    <label for="route">Select Route</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <select class="form-control" name="route" id="route" onselect="sendInfo()">
    <option value="default">selectroute</option>
    <option value="Transactional">Transactional</option>
    <option value="Promotional">Promotional</option>
  </select>
  </div>
 </div> 
   
</div>  <br><br>

<h3><span id="amit"> </span></h3>   
  

<div class="row">
<div class="col-sm-3">
<div class="form-group">
  <label for="sid">Sender ID</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <select name="sid" id="sid" >
    <option id="option" value="select">Select</option>

    <%  
    String ro=request.getParameter("route");
    String url="jdbc:mysql://localhost:3306/senderid";
	String uname="root";
	String pass ="360@Logica";
	String query ="select * from senderiddata";
	//System.out.println(ro);
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Statement stmt;
	
	try {
		Connection connection=DriverManager.getConnection(url,uname,pass);
		stmt = connection.createStatement();
	    ResultSet rs= stmt.executeQuery(query);
	    
	    while(rs.next())
	    {
	    	%>
	    	<option><%=rs.getString("senderidname") %></option>
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
<div class="col-sm-3">
<div class="form-group">
    
  </div>
 </div>  
 

   
</div>    

   

<div class="row">
<div class="col-sm-3">
<div class="form-group">
  
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
 <label class="form-check-label" for="sendnow">Send Now: </label>
    <input class="form-check-input" type="checkbox" value="" id="sendnow">
  </div>
 </div> 
   
</div>    

<div class="row">
<div class="col-sm-3">
<div class="form-group">
    <label for="exampleInputEmail1">Send Later</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <input type="date" class="form-control" id="date" name="date" id="date" aria-describedby="date" >
  </div>
 </div> 
   
</div>    

<div class="row">
<div class="col-sm-3">
<div class="form-group">
  
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
   <button type="reset" class="btn btn-danger">Cancel Campaign</button>
   <button type="submit" class="btn btn-success">Create Campaign</button>
  </div>
 </div> 
   
</div>    
</div>

</div>

</div>
</form>
</body>
</html>