package Createnewgroup;
	
	import java.sql.Connection;
	import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
	import java.sql.Statement;

	public class NewGroupDB {

		public static String number;

		public int createnewgroup(NewGroupdata object2) throws ClassNotFoundException
		{
	int result=0;
			
			String url="jdbc:mysql://localhost:3306/newgroup";
			String uname="root";
			String pass ="360@Logica";
			String query ="insert into newgroup values('"+object2.getGroupname()+"','"+object2.getDescription()+"','"+object2.getAddmobilenumbers()+"')";
			String query1="select addmobilenumber from newgroup";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Statement stmt,stmt2;
			try {
				Connection connection=DriverManager.getConnection(url,uname,pass);
				stmt = (Statement) connection.createStatement();
				//PreparedStatement statement=connection.prepareStatement(query);
				//statement.setString(1, beanData.getName());
				//statement.setString(2, "test");
				//statement.setString(2, beanData.getPass());
				//statement.setString(3, beanData.getEmail());
				
				System.out.println(stmt);
				//Statement statement=connection.createStatement();
				result=stmt.executeUpdate(query);
				ResultSet rs=stmt.executeQuery(query1);
				
				while(rs.next())
				{
				 number=rs.getString("addmobilenumber");
				 System.out.println(number);
				}
				
				if(result==1)
				{
					System.out.println("record save..");
					//splitnumber obj=new splitnumber();
					//obj.m1();
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


