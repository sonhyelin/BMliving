package com.puppyfood101.javaweb.controller.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.puppyfood101.javaweb.dao.NoticeDao;
import com.puppyfood101.javaweb.entity.Board;
import com.puppyfood101.javaweb.entity.CommunityView;
import com.puppyfood101.javaweb.jdbcdao.JdbcNoticeDao;


@WebServlet("/customer/board/detail")
public class NoticeDetailController extends HttpServlet{
	@Override
	protected void service(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String number = request.getParameter("number");
		int _number = Integer.parseInt(number);
		

		
	    NoticeDao dao = new JdbcNoticeDao();
	
		
		//Model
		
        CommunityView n = dao.get(_number);
		
    	int result = dao.updateHit(_number);
    	
	       
	   request.setAttribute("board", n);
	   //response.sendRedirect("notice.jsp"); //�ƿ� ���� ���
	   request.getRequestDispatcher("/WEB-INF/views/customer/board/detail.jsp").forward(request, response); //�̾ ���
	   //redirect
	   //forward
	   //�Ѵ� �������� �ٸ����� �̵��� �� ���.
			   
		}
	

}
