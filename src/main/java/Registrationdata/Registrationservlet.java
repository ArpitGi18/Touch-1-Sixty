package Registrationdata;

import java.io.IOException;
import java.io.PrintWriter;

import org.apache.catalina.connector.Response;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Registrationservlet extends HttpServlet {
   public String fullname1;
   public String email1;
   public String mobilenumber1;
   public String password1;
   public String retypepassword;
   HttpSession session;
   
   public void doGet(HttpServletRequest request , HttpServletResponse response) throws IOException, ServletException
   {
	   String fullname=request.getParameter("fullname");
	   String email=request.getParameter("email");
	   String mobilenumber=request.getParameter("mobilenumber");
	   String password=request.getParameter("password");
	   //String retypepass=request.getParameter("retypepassword");
	   PrintWriter out=response.getWriter();
	   
	   System.out.println(fullname);
	   
	   Registrationservlet object=new Registrationservlet();
	   object.fullname1=fullname;
	   object.email1=email;
	   object.mobilenumber1=mobilenumber;
	   object.password1=password;
	   //object.retypepassword=retypepass;
	   
	   Registrationdata object1=new Registrationdata();
	   object1.setEmail(email);
	   object1.setfullname(fullname);
	   object1.setMobilenumber(mobilenumber);
	   object1.setPassword(password);
	   
	  
	   
	   RegistrationDB objectDb=new RegistrationDB();
	   try {
		   System.out.println("Record saving servlet");
			objectDb.registeremployee(object1);
		response.sendRedirect("Registrationsuccess.jsp");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
   }
	   

   }

