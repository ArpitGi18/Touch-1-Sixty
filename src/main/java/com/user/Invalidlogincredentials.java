package com.user;

import java.io.IOException;
import java.io.PrintWriter;

import com.mysql.cj.Session;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Invalidlogincredentials extends HttpServlet 
{
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    PrintWriter outPrintWriter=response.getWriter();
	    outPrintWriter.println("Invalid login credentials");
	    response.sendRedirect("Bootstraplogin1.jsp");
	}

}
