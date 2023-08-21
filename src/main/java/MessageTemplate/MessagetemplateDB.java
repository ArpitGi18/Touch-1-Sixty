package MessageTemplate;
	
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;
	import java.sql.Statement;

import jakarta.servlet.RequestDispatcher;

	public class MessagetemplateDB {

		public int addtemplateid(Messagetemplatedata object2) throws ClassNotFoundException
		{
	int result=0;
			
			String url="jdbc:mysql://localhost:3306/templateid";
			String uname="root";
			String pass ="360@Logica";
			String query ="insert into templateid values('"+object2.getTidString()+"','"+object2.getMessaString()+"')";
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Statement stmt;
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


