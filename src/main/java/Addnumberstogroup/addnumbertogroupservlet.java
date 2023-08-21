package Addnumberstogroup;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


public class addnumbertogroupservlet extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String groupname1=request.getParameter("gname");
		String mobilenumber1=request.getParameter("mnumber");
		
		addnumbertogroupdata obj=new addnumbertogroupdata();
		obj.setGroupname(groupname1);
		obj.setMobilenumbers(mobilenumber1);
		
		
		addnumbertogroupDB obj1=new addnumbertogroupDB();
		try {
			obj1.addnumbertogroup(obj);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		addnumber object5=new addnumber();
		try {
			object5.addnumbermethod(obj);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
