package com.user;
import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

import org.apache.tomcat.util.descriptor.web.LoginConfig;

import com.mysql.cj.Session;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
public class Register extends HttpServlet{
	public String name1;
	public String pass1;
	public String email1;
	HttpSession session;

	public void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException
	{
		session=request.getSession(true);
		
		String name=request.getParameter("un");
		String pass=request.getParameter("pass");
		String email=request.getParameter("email");
				
		Register employeeRegister=new Register();
		employeeRegister.name1=name;
		employeeRegister.pass1=pass;
		employeeRegister.email1=email;
		
		Data beanData=new Data();
		beanData.setName(name);
		beanData.setPass(pass);
		beanData.setEmail(email1);
		 RegisterDB registerDB=new RegisterDB();
		 try {
			System.out.println(registerDB.registeremployee(beanData));
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		 
		 try {
			if(registerDB.registeremployee(beanData))
			 {
				session.setAttribute("credentials","sfdsfdsf");
				System.out.println("User Found # Servlet");
				 response.sendRedirect("home.jsp");
			 }
			else {
				System.out.println("User not Found # Servlet");
								
				response.sendRedirect("Bootstraplogin1.jsp?msg=invlid login");
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

		
		
