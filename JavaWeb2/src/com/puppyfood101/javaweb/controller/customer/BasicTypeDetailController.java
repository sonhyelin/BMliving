package com.puppyfood101.javaweb.controller.customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/menu/basic-type-detail")
public class BasicTypeDetailController extends HttpServlet {
   
   @Override
   protected void service(
         HttpServletRequest request,
         HttpServletResponse response) throws ServletException, IOException {
      
      
      request.getRequestDispatcher("/WEB-INF/views/customer/menu/basic-type-detail.jsp").forward(request, response);
      
   }
      
   


}