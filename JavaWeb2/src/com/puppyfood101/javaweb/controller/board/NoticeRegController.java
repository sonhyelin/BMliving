package com.puppyfood101.javaweb.controller.board;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.puppyfood101.javaweb.dao.MemberDao;
import com.puppyfood101.javaweb.entity.MyPageView;
import com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao;



@WebServlet("/customer/board/reg")
public class NoticeRegController extends HttpServlet {
   
@Override
   protected void doPost(HttpServletRequest request, 
         HttpServletResponse response) throws ServletException, IOException {
     


	HttpSession session = request.getSession();


	response.setContentType("text/html; charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	  
	PrintWriter out =response.getWriter();
	
	Object _memberId=session.getAttribute("id");
	
	
			String memberId = _memberId.toString(); 
			
			System.out.print(memberId);
			
		
    String title = request.getParameter("title");
    String content = request.getParameter("content");   
   
    
    String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
    String sql = "insert into Board(number, memberId, title, content,hit) value((select ifnull(max(cast(number as unsigned)), 0)+1 from Board n), ?, ?, ?,?);";

     try {
        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = DriverManager.getConnection(url, "puppy", "0728"); 

     
        /* Statement st = conn.createStatement();*/
        PreparedStatement st = (PreparedStatement) conn.prepareStatement(sql);
        st.setString(1, memberId);
        st.setString(2, title);
        st.setString(3, content);
        st.setInt(4, 0);
      /*  st.setString(1, notice);*/
      
        int result = st.executeUpdate();
        
        st.close();
        conn.close();
     
     } catch (ClassNotFoundException e) {
        e.printStackTrace();
     } catch (SQLException e) {
        e.printStackTrace();
     }

     response.sendRedirect("list");
		
   }

@Override
protected void doGet(
      HttpServletRequest request,
      HttpServletResponse response) throws ServletException, IOException {
	
   response.setContentType("text/html; charset=UTF-8");	
   response.setCharacterEncoding("UTF-8");
   PrintWriter out = response.getWriter();
   
   HttpSession session = request.getSession();
   if(session.getAttribute("id") == null)
      out.write("<script>alert('로그인이 필요한 요청입니다.');location.href='../member/login?returnURL=../board/reg';</script>");
   else
	   request.getRequestDispatcher("/WEB-INF/views/customer/board/reg.jsp").forward(request, response); //?��?��?�� 출발
 
}
}