<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INDEX</title>
</head>
<body>
<%@ page import="java.sql.*"%> 
<%@ page import="java.sql.Connection"%> 
<%@ page import="java.sql.DriverManager"%> 
<%@ page import="java.sql.PreparedStatement"%> 
<%@ page import="java.sql.ResultSet"%> 
<%@ page import="java.sql.SQLException"%>  
<%@ page import="java.sql.Statement"%> 
  
<%  
String s=request.getParameter("val");  
String url="jdbc:mysql://localhost:3306/senderid";
String uname="root";
String pass = "360@Logica";
try{  
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection(url,uname,pass);  
PreparedStatement ps=con.prepareStatement("select senderidtype from snederiddata where senderidtype='"+s+"'");  
//ps.setString(1,s);  
ResultSet rs=ps.executeQuery();  
while(rs.next()){  
out.print(rs.getString(1));  
}  
con.close();  
}
catch(Exception e)
{e.printStackTrace();}  
  
%>  
</body>
</html>