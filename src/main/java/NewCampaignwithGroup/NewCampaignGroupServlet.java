package NewCampaignwithGroup;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class NewCampaignGroupServlet extends HttpServlet {
	
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String campaignname1=request.getParameter("cname1");
		String groupdetails1=request.getParameter("gname1");
		String route1=request.getParameter("route1");
		String senderid1=request.getParameter("sid1");
		String templateid1=request.getParameter("tid1");
		String message1=request.getParameter("messagetext1");
		
		System.out.println(campaignname1);
		
		Newcampaigngroupdata object=new Newcampaigngroupdata();
		object.setCampaignname(campaignname1);
		object.setGroupdetails(groupdetails1);
		object.setRoute(route1);
		object.setSenderid(senderid1);
		object.setTemplateid(templateid1);
		object.setMessage(message1);
		
		NewCampaignGroupDB object1=new NewCampaignGroupDB();
		try {
			object1.newcampaigngroup(object);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher requestDispatcher=request.getRequestDispatcher("/Successnewcampaignwithgroup.jsp");
		requestDispatcher.include(request, response);
				
		
	}

}
