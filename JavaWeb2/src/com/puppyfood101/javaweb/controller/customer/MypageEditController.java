package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.dao.MemberDao;
import com.puppyfood101.javaweb.entity.Member;
import com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao;

@WebServlet("/customer/member/mypage-edit")
public class MypageEditController extends HttpServlet {

   
   @Override
   protected void doGet(HttpServletRequest request, 
         HttpServletResponse response) throws ServletException, IOException {

      request.getRequestDispatcher("/WEB-INF/views/customer/member/mypage-edit.jsp").forward(request, response);
   }

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      String password = request.getParameter("pwd");
      System.out.println("password:"+password);
      MemberDao memberDao = new JdbcMemberDao();

      Member member = memberDao.get1(password);
  	    PrintWriter out = response.getWriter();
      if (member == null)
         response.sendRedirect("mypage-edit?error11");
       
      else if (!(member.getPassword().equals(password)))
         response.sendRedirect("mypage-edit?error");
      else {
         response.sendRedirect("mypage-edit2");
/*         String url = request.getParameter("returnURL");*/

         /*if (url != null)
            response.sendRedirect(url);
         else
            */
      }

   }

   
   


}