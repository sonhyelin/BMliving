
package com.puppyfood101.javaweb.controller.customer;

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
import com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao;



@WebServlet("/customer/member/newmember-join-dog")
public class NewmemberJoinDogController extends HttpServlet{

   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      request.setCharacterEncoding("UTF-8");
      
      
      

		HttpSession session = request.getSession();


		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out =response.getWriter();
		
		Object _memberId=session.getAttribute("id");
		
		
				String memberId = _memberId.toString(); 
				
				MemberDao dao = new JdbcMemberDao();
			
				String defaltRoleId = dao.getId(memberId);


      System.out.println(defaltRoleId);
			
      String name = request.getParameter("name");
      String birthYear =request.getParameter("birth");
      String sex=request.getParameter("sex");
      String size = request.getParameter("size");
      String kind=request.getParameter("kind");
	  
	  	response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
	
		

      if(name==null || name.equals(""))
    	  out.println("<script>alert('반려견의 이름을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
      
      else if(birthYear==null || birthYear.equals(""))
    	  out.println("<script>alert('반려견의 생일년도를 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
      
      else if(sex==null || sex.equals(""))
    	  out.println("<script>alert(' 반려견의 성별을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
      
      else if( size==null || size.equals(""))
    	  out.println("<script>alert('반려견의 사이즈를 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
    
      else if(kind==null ||kind.equals(""))
    	  out.println("<script>alert('반려견의 종타입을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
      else {
    	  String sql = "INSERT INTO Puppy(ownerId,name,birthYear,sex,size,kind) values(?,?,?,?,?,?)";
	      String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
	    

      try {
         // ����
         Class.forName("com.mysql.jdbc.Driver");

         // ���� / ����
         Connection con = DriverManager.getConnection(url, "puppy", "0728");

         //Statement st = con.createStatement();
         PreparedStatement st = con.prepareStatement(sql);
         st.setString(1, defaltRoleId);
         st.setString(2, name);
         st.setString(3, birthYear);
         st.setString(4, sex);
         st.setString(5, size);
         st.setString(6, kind);
         
         // ��� ��������
         int result = st.executeUpdate();
         System.out.println(defaltRoleId);
         
         System.out.println(result);
      
         st.close();
         con.close();

      } catch (ClassNotFoundException e) {
         e.printStackTrace();
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      response.sendRedirect("login");
        }
	}
   

  	protected void doGet(HttpServletRequest request, HttpServletResponse response)
  			throws ServletException, IOException {

  	
  	
  
		
	   
		request.getRequestDispatcher("/WEB-INF/views/customer/member/newmember-join-dog.jsp").forward(request, response);

	}

}