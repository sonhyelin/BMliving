package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.puppyfood101.javaweb.dao.MemberDao;
import com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao;



@WebServlet("/customer/member/mypage-check")
public class MypageCheckController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();

		
		Object _memberId = session.getAttribute("id");
		if (_memberId == null)
			out.write(
					"<script>alert('로그인이 필요합니다.');location.href='../member/login?returnURL=../member/mypage-check';</script>");
		else {
			
			String memberId = _memberId.toString(); 
			MemberDao memberRoleDao =new JdbcMemberDao();
			String defaltRoleId = memberRoleDao.getDefaultRoleId(memberId);
			
			
			
			
			   if(defaltRoleId.equals("ROLE_ADMIN")) 
				response.sendRedirect("../../admin/member-mng/in-member-list");
			   else
				   request.getRequestDispatcher("/WEB-INF/views/customer/member/mypage-check.jsp").forward(request, response);
			
			
				
			}
			
			
			
		}

	}


