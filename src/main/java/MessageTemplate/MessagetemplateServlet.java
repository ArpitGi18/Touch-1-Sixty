package MessageTemplate;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class MessagetemplateServlet extends jakarta.servlet.http.HttpServlet {
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String templateidString=request.getParameter("templateid");
		String messageString=request.getParameter("message");
		
		System.out.println(templateidString);
		System.out.println(messageString);
		
		Messagetemplatedata objMessagetemplatedata=new Messagetemplatedata();
		objMessagetemplatedata.setMessaString(messageString);
		objMessagetemplatedata.setTidString(templateidString);
		
		MessagetemplateDB object = new MessagetemplateDB();
		try {
			object.addtemplateid(objMessagetemplatedata);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/successmsgcreate.jsp");
		requestDispatcher.include(request, response);
	}

}