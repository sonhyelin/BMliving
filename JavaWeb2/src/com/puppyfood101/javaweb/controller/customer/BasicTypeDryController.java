package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.dao.DogFoodDao;
import com.puppyfood101.javaweb.jdbcdao.JdbcDogFoodDao;


@WebServlet("/customer/menu/basic-type-dry")
public class BasicTypeDryController extends HttpServlet {
   
   @Override
   protected void service(
         HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      
      String _query = request.getParameter("name");
      
      String query=""; //기본값
      
      if(_query != null && !_query.equals(""))
         query=_query;
      
      DogFoodDao noticeDao = new JdbcDogFoodDao();

      
      request.getRequestDispatcher("/WEB-INF/views/customer/menu/basic-type-dry.jsp").forward(request, response);
      
   }
      
   


}