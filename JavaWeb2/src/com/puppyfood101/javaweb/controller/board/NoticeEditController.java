package com.puppyfood101.javaweb.controller.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.dao.NoticeDao;
import com.puppyfood101.javaweb.entity.Board;
import com.puppyfood101.javaweb.entity.CommunityView;
import com.puppyfood101.javaweb.jdbcdao.JdbcNoticeDao;



@WebServlet("/customer/board/edit")
public class NoticeEditController extends HttpServlet {
   
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      request.setCharacterEncoding("UTF-8");
      
  	
		String number = request.getParameter("number");
		
		   int _number = 1; // �⺻��
		      if(number != null && !number.equals("")) //Ȥ�ó� ���� �Ǿ��ٸ�
		    	  _number = Integer.parseInt(number);
		       
      

     /* String id= request.getParameter("id");*/
      String title=request.getParameter("title");
      String content =request.getParameter("content");
      
      NoticeDao noticeDao = new JdbcNoticeDao();
      noticeDao.update(_number,title,content);
     
      response.sendRedirect("detail?number=" + number);
   }
   
   @Override

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

	   String number = request.getParameter("number");
		
     

      Board n = null;

      int _number = 0; // �⺻��
      if(number != null && !number.equals("")) //Ȥ�ó� ���� �Ǿ��ٸ�
    	  _number = Integer.parseInt(number);
       

      /* System.out.println(title); */

      // List<Notice> list = null;

      String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
      String sql = "SELECT * FROM Board WHERE number = ?";

      // Jdbc ����̹� �ε�
      try {
         Class.forName("com.mysql.jdbc.Driver");

         // ���� / ����
         Connection conn = DriverManager.getConnection(url, "puppy", "0728"); 

         // ����
         /* Statement st = conn.createStatement(); */
         PreparedStatement st = (PreparedStatement) conn.prepareStatement(sql);
         st.setInt(1, _number);
         // ��� ��������
         ResultSet rs = st.executeQuery();

         while (rs.next()) {
            n = new Board();
            n.setNumber(rs.getInt("number"));
            n.setTitle(rs.getString("title"));
            n.setContent(rs.getString("content"));
            n.setMemberId(rs.getString("memberId"));
            n.setHit(rs.getInt("hit"));
            n.setRegDate(rs.getDate("regDate"));
         }

         rs.close();
         st.close();
         conn.close();

      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      request.setAttribute("board", n);
      // response.sendRedirect("notice.jsp"); //�ƿ� ���� ���
      request.getRequestDispatcher("/WEB-INF/views/customer/board/edit.jsp").forward(request, response); // �̾ ���
      // redirect
      // forward
      // �Ѵ� �������� �ٸ����� �̵��� �� ���.

   }

}