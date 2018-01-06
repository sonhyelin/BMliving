
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

@WebServlet("/customer/member/newmember-join")
public class NewmemberJoinController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		String pwdCheck = request.getParameter("pwdCheck");
		String phoneNumber = request.getParameter("phoneNumber");
		String birthDate = request.getParameter("birthDate");

		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		System.out.println(id + ", " + name);
		if (id == null || id.equals(""))
			out.println("<script>alert('아이디을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
		else if (email == null || email.equals(""))
			out.println("<script>alert('이메일을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");

		else if (name == null || name.equals(""))
			out.println("<script>alert('이름을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");

		else if (pwd == null || pwd.equals(""))
			out.println("<script>alert('비밀번호를 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");

		else if (!pwdCheck.equals(pwd))
			out.println("<script>alert('비밀번호가 틀렸습니다. 다시 입력해 주세요.');history.go(-1);</script>");
		else if (phoneNumber == null || phoneNumber.equals(""))
			out.println("<script>alert('번호를 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
		else if (birthDate == null || birthDate.equals(""))
			out.println("<script>alert('생년월일을 입력하지 않으셨습니다. 입력해주세요.');history.go(-1);</script>");
		else {
			String sql = "INSERT INTO Member(id,name,password,phoneNumber,birthDate,email,roleId) values(?,?,?,?,?,?,?)";
			String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

			try {
			
				Class.forName("com.mysql.jdbc.Driver");

				Connection con = DriverManager.getConnection(url, "puppy", "0728");

				// Statement st = con.createStatement();
				PreparedStatement st = con.prepareStatement(sql);
				st.setString(1, id);
				st.setString(2, name);
				st.setString(3, pwd);
				st.setString(4, phoneNumber);
				st.setString(5, birthDate);
				st.setString(6, email);
				st.setString(7,"ROLE_MEMBER");
				
			

				int result = st.executeUpdate();
			
				System.out.println(result);
				
				st.close();
				con.close();

			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (id == null)
				response.sendRedirect("join?error");
			else {

				request.getSession().setAttribute("id", id);

				String returnURL = request.getParameter("returnURL");

				if (returnURL != null)
					response.sendRedirect(returnURL);
				else
					response.sendRedirect("newmember-join-dog");
			}

		}
	}
	/* } */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/customer/member/newmember-join.jsp").forward(request, response);

	}

}
