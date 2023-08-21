package Addnumberstogroup;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class addnumber {
	int result=0;

	public void addnumbermethod(addnumbertogroupdata object) throws ClassNotFoundException, SQLException 
	{	
		//addnumbertogroupdata object=new addnumbertogroupdata();
		
		String url="jdbc:mysql://localhost:3306/newgroup";
		String uname="root";
		String pass ="360@Logica";
		String query="update newgroup set addmobilenumber=addmobilenumber+'"+object.getMobilenumbers()+"' where groupname='"+object.getGroupname()+"'";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Statement stmt;
		
			Connection connection=DriverManager.getConnection(url,uname,pass);
			stmt = (Statement) connection.createStatement();
			result=stmt.executeUpdate(query);
			if(result==1)
			{
				System.out.println("record save..#");
			}
			else 
			{
				{
					System.out.println("not save..#");
					System.out.println(object.getMobilenumbers());
				}
			}
		
	}
	}


	
