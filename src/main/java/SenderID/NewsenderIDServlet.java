package SenderID;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

//import org.apache.jasper.compiler.NewlineReductionServletWriter;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class NewsenderIDServlet extends jakarta.servlet.http.HttpServlet 
{	
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		String senderidtype=request.getParameter("sidtype");
		String senderidname=request.getParameter("sidname");
		String purpose=request.getParameter("purpose");
		
		System.out.println(senderidname);
		System.out.println(senderidtype);
		System.out.println(purpose);
		
		NewsenderIDData objectData = new NewsenderIDData();
		objectData.setPurposeString(purpose);
		objectData.setSenderID(senderidname);
		objectData.setSenderIDtypeString(senderidtype);
		
		NewsenderidDB objectNewsenderidDB= new NewsenderidDB();
		try {
			objectNewsenderidDB.addsenderid(objectData);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/successsenderid.jsp");
		requestDispatcher.include(request, response);
		
		
	}

}
