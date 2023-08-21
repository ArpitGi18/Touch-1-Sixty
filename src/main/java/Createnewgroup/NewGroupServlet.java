package Createnewgroup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class NewGroupServlet extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String groupname1=request.getParameter("gname");
		String description1=request.getParameter("desc");
		String addmobilenumber1=request.getParameter("mnumber");
		String uploadmobilenumbers1=request.getParameter("");
		
		System.out.println(groupname1);
		
		
		NewGroupdata object=new NewGroupdata();
		object.setGroupname(groupname1);
		object.setDescription(description1);
		object.setAddmobilenumbers(addmobilenumber1);
		object.setUploadmobilenumbers(uploadmobilenumbers1);
		
		NewGroupDB object1=new NewGroupDB();
		try {
			object1.createnewgroup(object);
		} 
			
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/successnewgroup.jsp");
		requestDispatcher.include(request, response);
		
		
	}

}
