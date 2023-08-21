<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.col-sm-3
{
margin-left:9px;
width:24%;
height:135px;
}
</style>
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-sm-2">
<ul class="nav" ui-nav="">

<li class="nav-head">
<center><img src="Images/ResizedLogo.png" height="100%" width=80%><center>
</li>

<li class="active">
<a href="home.jsp"><span style="color:black"><i class="fa fa-tachometer"></i>
<label style="margin-left: 8px">Dashboard</label></span></a>
</li>


 
 <li class="dropdown">
   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span style="color:black"><i class="fa-solid fa-bullhorn"></i>
   <label style="margin-left: 10px">Campaigns</label></span>
   <i class="fa fa-angle-right pull-right"></i></a>
    
    <ul class="dropdown-menu" role="menu">
    
    <li>
    <a href="Createnewcampaign.jsp"><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Create New Campaign</label></span></a>
    </li>
 
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Create Campaign With Group</label></span></a>
    </li>
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Create Personalised Campaign</label></span></a>
    </li>
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Manage Campaigns</label></span></a>
    </li>
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Today's Campaigns</label></span></a>
    </li>
   
    </ul>
    </li>
    
<li class="active">
<a href="CreatenewsenderID.jsp"><span style="color:black"><i class="fa-brands fa-wordpress-simple"></i>
<label style="margin-left: 8px">Sender ID</label></span></a>
</li>

<li class="active">
<a href="Createmessagetemplate.jsp"><span style="color:black"><i class="fa-brands fa-wordpress-simple"></i>
<label style="margin-left: 8px">SMS Templates</label></span></a>
</li>
   
 
<li class="dropdown">
   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span style="color:black"><i class="fa-solid fa-bullhorn"></i>
   <label style="margin-left: 10px">UI Campaigns</label></span>
   <i class="fa fa-angle-right pull-right"></i></a>
    
    <ul class="dropdown-menu" role="menu">
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Detailed Report</label></span></a>
    </li>
 
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Date Wise Summary Report</label></span></a>
    </li>  
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Campaign Wise Summary Report</label></span></a>
    </li> 
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Search On Mobile Number</label></span></a>
    </li> 
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Undelievered Details</label></span></a>
    </li> 
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Today Campaign Status</label></span></a>
    </li>  
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Transactions History</label></span></a>
    </li> 
    
    </ul>
    </li>
    
<li class="active">
<a href="home.jsp"><span style="color:black"><i class="fa-solid fa-money-bill-1"></i>
<label style="margin-left: 8px">Transactions</label></span></a>
</li>  
 

<li class="dropdown">
   <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><span style="color:black"><i class="fa-solid fa-user-group"></i>
   <label style="margin-left: 0px">GroupManagement</label></span>
   <i class="fa fa-angle-right pull-right"></i></a>
    
    <ul class="dropdown-menu" role="menu">
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Create New Group</label></span></a>
    </li>
 
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Add Numbers to Group</label></span></a>
    </li> 
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Delete Numbers from Group</label></span></a>
    </li> 
    
    <li>
    <a href=""><span style="color:black"><i class="fa-solid fa-circle-dot"></i>
    <label style="margin-left: 6px">Group Details</label></span></a>
    </li>  
    
    </ul>
    </li> 
   
<li class="active">
<a href="home.jsp"><span style="color:black"><i class="fa-solid fa-user-group"></i></i>
<label style="margin-left: 8px">Manage Profile</label></span></a>
</li>  

<li class="active">
<a href="home.jsp"><span style="color:black"><i class="fa-solid fa-power-off"></i></i>
<label style="margin-left: 8px">LogOut</label></span></a>
</li>     

</ul>
</div>


<div class="col-sm-10">
    <div class="row" style="background-color: red">
<div class="col-sm-1">
</div>

<div class="col-sm-9">
</div>


    <div class="col-sm-2">
        <div class="input-group">  
          <div class="input-group-btn">
                <button class="btn btn-default" type="submit">
          <i class="fa-solid fa-user"></i></button>
          </div>
          <h4 style="padding-right: 0px">1Sixty</h4>           
        </div>  
    </div>
   

   </div>



   <div class="row gx-5">
<div class="col-sm-2" style="font-weight: bold;padding-bottom: 10px">
<h3>Dashboard</h3>
</div>

<div class="col-sm-8">
</div>

<div class="col-sm-1" style="padding-top: 10px;">
<h5>Home</h5>
</div>

<div class="col-sm-1" style="padding-top: 10px;">
<h5>Dashboard</h5>
   </div>
   </div>


<div class="row">


<div class="col-sm-3" style="background-color: pink;">
<h4 class="card-text">Total Campaigns : 0</h4>
<h4 class="card-text">Total Sent : 0</h4>
<h4 class="card-text">Total Campaigns : 0</h4>
<h4 class="card-footer"><center>View Campaigns <a href=""><i class="fa-solid fa-circle-right"></i></a></center></h4>
</div>

<div class="col-sm-3" style="background-color: blue;">
<h4 class="card-text">Total Campaigns : 0</h4>
<h4 class="card-text">Tota Sent : 0</h4>
<h4 class="card-text">Total Campaigns : 0</h4>
<h4 class="card-footer"><center>Today's Campaigns <a href=""><i class="fa-solid fa-circle-right"></i></a></center></h4>
</div>

<div class="col-sm-3" style="background-color: green;'">
<h3 class="card-text">NAN%</h3>
<h4 class="card-text">Success Rate</h4>
</div>

<div class="col-sm-3" style="background-color: orange;">
</div>


</div>


<div class="row">
<div class="col-sm-12">
</div>
</div>






</div>
</div>
</div>


</body>
</html>