package Newcampaign;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
//import java.sql.Statement;

//import Registrationdata.Registrationdata;

public class NewcampaignDB {

	public int newcampaign(CampaignData object1) throws ClassNotFoundException
	{
		
		
		
		int result=0;
				
				String url="jdbc:mysql://localhost:3306/newcampaign";
				String uname="root";
				String pass ="360@Logica";
				String query ="insert into campaign values(?,?,?,?,?,?,?)";
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				//Statement stmt;
				try {
					Connection connection=DriverManager.getConnection(url,uname,pass);
					//stmt = connection.createStatement();
					
					//stmt.setBlob(1, object1.getImage());             
					PreparedStatement statement=connection.prepareStatement(query);
					
					statement.setString(1, object1.getCampaignname());
					statement.setString(2, object1.getMobilenumbers());
					statement.setString(3, object1.getSelectroute());
					statement.setString(4, object1.getSenderid());
					statement.setString(5, object1.getTemplateid());
					statement.setString(6, object1.getMessagetext());
					statement.setBlob(7, object1.getImage());
					System.out.println(statement);
					//Statement statement=connection.createStatement();
					result=statement.executeUpdate(query);
					if(result==1)
					{
						System.out.println("record save..");
					}
					else 
					{
						{
							System.out.println("not save..");
						}
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();		
				}
				return result;	
				
			}		
	}

