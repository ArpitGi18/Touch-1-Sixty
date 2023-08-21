package Newcampaign;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.Part;


@MultipartConfig(maxFileSize = 16177215)
public class imageupload extends jakarta.servlet.http.HttpServlet 
{
	
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws IOException, ServletException 
	{
		
		String url="jdbc:mysql://localhost:3306/newcampaign";
		String uname="root";
		String pass ="360@Logica";
		
		String campaignname1=request.getParameter("exampleInputEmail1");
		String mobilenumbers=request.getParameter("mnumber");
		String selectroute=request.getParameter("route");
		String senderid=request.getParameter("sid");
		String templateid =request.getParameter("tid");
		String messageString = request.getParameter("messagetext");
        
		
		try 
		{
		
        InputStream inputStream=null;   //// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("myfile");
		
		//Print out some information for debugging
		System.out.println(filePart.getName());
		System.out.println(filePart.getSize());
		System.out.println(filePart.getContentType());

		//Obtain input stream of the upload file
		inputStream=filePart.getInputStream();
		System.out.println(inputStream);
			
		
		DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
		Connection connection21 = DriverManager.getConnection(url,uname,pass);
		
		String sqlString="insert into  campaign values(?,?,?,?,?,?,?)";
		PreparedStatement statement=connection21.prepareStatement(sqlString);
		
		statement.setString(1, campaignname1);
		statement.setString(2, mobilenumbers);
		statement.setString(3, selectroute);
		statement.setString(4, senderid);
		statement.setString(5, templateid);
		statement.setString(6, messageString);
		statement.setBlob(7, inputStream);
		
		
		int row=statement.executeUpdate();
 		if(row>0)
		{
			String message = "File uploaded in the database";
			
		}
		else {
			System.out.println("not uploaded");
		}
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/successcampaign.jsp");
		requestDispatcher.include(request, response);
		}
		
		catch (SQLException e) {
			System.out.println("Exception"+e);
						
		}
						
	}

}
