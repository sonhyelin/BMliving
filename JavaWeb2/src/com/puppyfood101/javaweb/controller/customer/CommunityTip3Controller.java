package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/menu/tip3")
public class CommunityTip3Controller extends HttpServlet {
	
	@Override
	protected void service(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("/WEB-INF/views/customer/menu/tip3.jsp").forward(request, response);
		
	}
		
	


}
