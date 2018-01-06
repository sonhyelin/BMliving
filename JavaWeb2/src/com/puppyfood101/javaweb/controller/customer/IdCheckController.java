package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.jdbcdao.JdbcCheckJoinDao;

@WebServlet("/IdCheckController")
public class IdCheckController extends HttpServlet{

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   request.setCharacterEncoding("utf-8");
   response.setContentType("text/html;charset=utf-8");
      String chkId = request.getParameter("chkId");
      System.out.println(chkId);
      response.getWriter().write(new JdbcCheckJoinDao().chkId(chkId)+"");
   
   }
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

   }

}