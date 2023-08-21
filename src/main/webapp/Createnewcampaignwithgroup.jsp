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
<form action="NewCampaignGroupServlet" method="post" name="campaignform">
<div class="container">

<div class="row">
<div class="col-sm-12">
<h2 style="font:bold;">Create New Campaign from Group</h2>
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
    <input type="email" class="form-control" name="cname1" aria-describedby="emailHelp" placeholder="Name your new campaign" required>
  </div>
 </div> 
   
</div>

<div class="row">
<div class="col-sm-3">
<div class="form-group">
    <label for="route">Select Group Details</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <select class="form-control" name="gname1" id="gname" onselect="sendInfo()">
    <option value="default">Select Group Name</option>
    
    <%  
    //String ro=request.getParameter("route");
    String url2="jdbc:mysql://localhost:3306/newgroup";
	String uname2="root";
	String pass2 ="360@Logica";
	String query2 ="select * from newgroup";
	//System.out.println(ro);
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Statement stmt2;
	
	try {
		Connection connection1=DriverManager.getConnection(url2,uname2,pass2);
		stmt2 = connection1.createStatement();
	    ResultSet rs2= stmt2.executeQuery(query2);
	    
	    while(rs2.next())
	    {
	    	%>
	    	<option><%=rs2.getString("groupname") %></option>
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
    <label for="route">Select Route</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <select class="form-control" name="route1" id="route" onselect="sendInfo()">
    <option value="default">selectroute</option>
    <option value="Transactional">Transactional</option>
    <option value="Promotional">Promotional</option>
  </select>
  </div>
 </div> 
   
</div>

<h3><span id="amit"> </span></h3>   
  

<div class="row">
<div class="col-sm-3">
<div class="form-group">
  <label for="sid">Sender ID</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <select name="sid1" id="sid" >
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
    <label for="tid">Select Template ID</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <select name="tid1" id="tid" >
    <option id="option" value="select">Select</option>

    <%    
    String ro1=request.getParameter("route");
    String url1="jdbc:mysql://localhost:3306/templateid";
	String uname1="root";
	String pass1 ="360@Logica";
	String query1 ="select * from templateid";
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
	    	<option><%=rs1.getString("tid") %></option>
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
 
 <div class="col-sm-9">
 <div class="form-group">
    <input type="checkbox" id="unicode" name="unicdoe" value="unicode">
  <label for="unicode"> Unicode</label>
  </div>
 </div> 
   
</div>    

<div class="row">
<div class="col-sm-3">
<div class="form-group">
    <label for="mtxt">Message text*</label>
  </div>
 </div>  
 
 <div class="col-sm-9">
 <div class="form-group">
    <textarea class="form-control" id="exampleFormControlTextarea1" name ="messagetext1" rows="4" placeholder="Type your message text here..." required></textarea>
    <small id="mtxt" class="form-text text-muted"><b>0 of 1500 Characters Used (1 SMS)</b></small>
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
  
  <div class="col-sm-4" style="border: 1px solid black;border-top: 2px solid green; margin-left: 15px;">
  
  <div class="row">
  <div class="col-sm-12">
  <h4>Last Five Campaigns</h4>
  </div>
  
  <div class="row">
  <div class="col-sm-12" style="margin-left: 12px;">
  <h4>Creating a new SMS template. <span style="font-size: 14px;">Click to insert this message</span></h4>
  </div>
  
  <div class="row">
  <div class="col-sm-12" style="margin-left: 27px;">
  <h4>Creating a new SMS template. <span style="font-size: 14px;">Click to insert this message</span></h4>
  
  </div>
    
  </div>
  </div>
  
</div>  
</div>

</div>

</div>
</form>
</body>
</html>