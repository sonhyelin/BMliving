package com.puppyfood101.javaweb.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/member-mng/member-info-edit")
public class MemberInfoEditController extends HttpServlet {
	
	@Override
	protected void service(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher("/WEB-INF/views/admin/member-mng/member-info-edit.jsp").forward(request, response);
		
	}
		
	


}
