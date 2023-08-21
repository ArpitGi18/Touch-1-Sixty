package com.user;

import java.io.IOException;

import org.apache.catalina.connector.Response;

import com.mysql.cj.Session;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class Recoverpasswordservlet extends HttpServlet {

HttpSession session;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
    	String emailString=request.getParameter("email");
    	session=request.getSession(true);
    	
    	Data objData=new Data();
    	objData.setEmail(emailString);
    	recoverpassword obRecoverpassword=new recoverpassword();
    	
    	try {
			if(recoverpassword.recoverpass(objData))
			{
	
				System.out.println("User email found # Servlet");
				session.setAttribute("Recover","A new password has been sent to your registered email address");
				response.sendRedirect("Bootstraplogin1.jsp");
			}
			else {
				System.out.println("User email not found # Servlet");
				session.setAttribute("Recover","Oops! This email is not associated with any user here. Please check your email");
				response.sendRedirect("Bootstraplogin1.jsp");		
				
				}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
