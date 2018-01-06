package com.puppyfood101.javaweb.controller.board;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.puppyfood101.javaweb.entity.Notice;
import com.puppyfood101.javaweb.entity.Board;

@WebServlet("/customer/board-list")
public class NoticeController extends HttpServlet{
	@Override
	protected void service(
			HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		String  _title = request.getParameter("title"); 

		String title = ""; //기본값

		if(_title != null && !_title.equals(""))
		   title=_title;
		/*System.out.println(title); */

		//------------------출력-----------------
		List<Board> list= null; 

		String sql = "SELECT *FROM Board WHERE title like ?";
		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		// JDBC 드라이버 로드
		try {
		   Class.forName("com.mysql.jdbc.Driver");

		   // 연결 / 인증
		    Connection con = DriverManager.getConnection(url, "puppy", "0728");

		    // 실행
		    /*Statement st = con.createStatement();*/
		    PreparedStatement st = con.prepareStatement(sql);
		    st.setString(1, "%"+title+"%");

		    // 결과 가져오기
		    /*ResultSet rs = st.executeQuery(sql);*/
		    ResultSet rs = st.executeQuery();

		    // Model 
		    list= new ArrayList<>();
		      
		    // 결과 사용하기
		    while (rs.next()) {
		       Board n = new Board();
		       n.setNumber(rs.getInt("number"));
		       n.setTitle(rs.getString("TITLE"));
		       //..
		         
		       list.add(n);
		    }
		      rs.close();
		      st.close();
		      con.close();
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		} catch (SQLException e) {
		e.printStackTrace();
		}
		
		request.setAttribute("list", list);
		
		//redirect: 아예 새롭게 출발
		/*response.sendRedirect("notice.jsp");*/
		//forward : 이어서 출발
		request.getRequestDispatcher("/WEB-INF/views/customer/board/list.jsp").forward(request, response);
		
	}
	

}
