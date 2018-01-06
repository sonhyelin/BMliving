package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/member/welcome")
public class WelcomeController extends HttpServlet {
	
	@Override
	protected void service(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("/WEB-INF/views/customer/member/welcome.jsp").forward(request, response);
		
	}
		
	


}
