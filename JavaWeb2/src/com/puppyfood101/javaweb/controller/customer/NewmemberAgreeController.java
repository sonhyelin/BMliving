package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/member/newmember-agree")
public class NewmemberAgreeController extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
		request.getRequestDispatcher("/WEB-INF/views/customer/member/newmember-agree.jsp").forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
		String _agree1 =request.getParameter("agree1");
		String _agree2 =request.getParameter("agree2");
		
		String agree1 ="yes";
		String agree2 ="yes";
		
		if(_agree1!=null&&!_agree1.equals(""))
				agree1=_agree1;
		
		if(_agree2!=null&&!_agree2.equals(""))
			agree2=_agree2;
		
		System.out.println(_agree1);
		System.out.println(_agree2);
	
		if(_agree1==null&&_agree2==null)
		response.sendRedirect("newmember-agree?error=1"); 
		else if(_agree1==null||_agree2==null)
		response.sendRedirect("newmember-agree?error=1"); 
		else		
			response.sendRedirect("newmember-join"); 
	
	

	}


}
