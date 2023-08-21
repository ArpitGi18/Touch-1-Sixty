package Addnumberstogroup;

import Createnewgroup.splitnumber;	
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.ResultSet;
import java.sql.SQLException;
	import java.sql.Statement;

	public class addnumbertogroupDB {
		static String  number;


		public int addnumbertogroup(addnumbertogroupdata object2) throws ClassNotFoundException
		{
	int result=0;
			
			String url="jdbc:mysql://localhost:3306/addnumbertogroup";
			String uname="root";
			String pass ="360@Logica";
			String query ="insert into addnumbertogroup values('"+object2.getGroupname()+"','"+object2.getMobilenumbers()+"')";
			
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Statement stmt;
			try {
				Connection connection=DriverManager.getConnection(url,uname,pass);
				stmt = (Statement) connection.createStatement();
				
				System.out.println(stmt);
				//Statement statement=connection.createStatement();
				result=stmt.executeUpdate(query);
				
				number = object2.getMobilenumbers();
				System.out.println(number);
				//splitnumber1 object=new splitnumber1();
							
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


