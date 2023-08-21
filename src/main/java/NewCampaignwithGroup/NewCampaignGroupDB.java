package NewCampaignwithGroup;
	
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;
	import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;

	public class NewCampaignGroupDB {

		public int newcampaigngroup(Newcampaigngroupdata object2) throws ClassNotFoundException
		{
	int result=0;
			
			String url="jdbc:mysql://localhost:3306/newcampaignwithgroup";
			String uname="root";
			String pass ="360@Logica";
			String query ="insert into newcampaignwithgroup values('"+object2.getCampaignname()+"','"+object2.getGroupdetails()+"','"+object2.getRoute()+"','"+object2.getSenderid()+"','"+object2.getTemplateid()+"','"+object2.getMessage()+"')";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Statement stmt;
			try {
				Connection connection=DriverManager.getConnection(url,uname,pass);
				stmt = (Statement) connection.createStatement();
				
				
				System.out.println(stmt);
				//Statement statement=connection.createStatement();
				result=stmt.executeUpdate(query);
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


