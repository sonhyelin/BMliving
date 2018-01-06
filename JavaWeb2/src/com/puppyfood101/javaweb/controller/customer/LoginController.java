package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.dao.MemberDao;
import com.puppyfood101.javaweb.entity.Member;
import com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao;

@WebServlet("/customer/member/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/customer/member/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String password = request.getParameter("password");

		MemberDao memberDao = new JdbcMemberDao();

		Member member = memberDao.get(id);

		if (member == null)
			response.sendRedirect("login?error11");
		else if (!(member.getPassword().equals(password)))
			response.sendRedirect("login?error");
		else {
			request.getSession().setAttribute("id", id);
			String url = request.getParameter("returnURL");

			if (url != null)
				response.sendRedirect(url);
			else
				response.sendRedirect("../home/main");
		}

	}

}