package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class recoverpassword {

	public static boolean recoverpass(Data objectData ) throws ClassNotFoundException
	{
        boolean status=false;
		
		
		String url="jdbc:mysql://localhost:3306/registrationdata";
		String uname="root";
		String pass = "360@Logica";
		//String query = "insert into registration values('"+beanData.getName()+"','"+beanData.getPass()+"','"+beanData.getEmail()+"')";
		//String query= "select * from registrationdata where fullname='"+beanData.getName()+"' and password='"+beanData.getPass()+"'";
		//String query="select * from registrationdata";
		String query="select * from registrationdata where email='"+objectData.getEmail()+"'";
		//String query = "insert into registration (username,userpassword,useremail) values ('test','test','test')";
		//System.out.println(query);
		Class.forName("com.mysql.cj.jdbc.Driver");		
		Statement stmt;
		try {
			Connection connection=DriverManager.getConnection(url,uname,pass);
			PreparedStatement pStatement;
			//pStatement=connection.prepareStatement(query);
			stmt=connection.createStatement();
			ResultSet rsResultset;
			
			//rsResultset=pStatement.executeQuery();
			rsResultset=stmt.executeQuery(query);
			//rsResultset.absolute(1);
			//ystem.out.println(rsResultset.getString(1)+""+rsResultset.getString(2));
			
			if(rsResultset.next())
			{
				//HttpSession session=Request.getSession(true);
				System.out.println("User email found");
				status=true;
				//System.out.println(rsResultset.getString(1)+""+rsResultset.getString(2)+""+rsResultset.getInt(3)+""+rsResultset.getInt(4));
			}
		}
			catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();		
		}
		
		return status;
		
	}

}
