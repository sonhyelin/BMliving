package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.puppyfood101.javaweb.dao.MemberDao;
import com.puppyfood101.javaweb.entity.Member;
import com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao;

@WebServlet("/customer/member/logout")
public class LogoutController extends HttpServlet {
   @Override
   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
	   HttpSession session = request.getSession();
	   session.invalidate();
	   
	   
       response.sendRedirect("../home/main");
       System.out.println("Dd");
   }

   
}

