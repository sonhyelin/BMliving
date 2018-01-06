package com.puppyfood101.javaweb.jdbcdao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.puppyfood101.javaweb.dao.MemberDao;
import com.puppyfood101.javaweb.entity.CommunityView;
import com.puppyfood101.javaweb.entity.Member;
import com.puppyfood101.javaweb.entity.MyPageView;

public class JdbcMemberDao implements MemberDao {

	@Override
	public int insert(Member member) {

		int result = 0;
		String sql = "insert into Member(id,name,password,phoneNumber,birthDate,email) values (?,?,?,?,?,?)";
		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "puppy", "0728");
			// Statement st = conn.createStatement();
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, member.getId());
			st.setString(2, member.getName());
			st.setString(3, member.getPassword());
			st.setString(4, member.getPhoneNumber());
			st.setString(5, member.getBirthDate());
			st.setString(6, member.getEmail());

			result = st.executeUpdate();

			st.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;

	}

	@Override
	public Member get(String id) {
		Member member = null;

		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM Member WHERE id=?";

		// jdbc ̹ ε
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// /
			Connection con = DriverManager.getConnection(url, "puppy", "0728");

			//
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);

			//
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				member = new Member();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				member.setPhoneNumber(rs.getString("phoneNumber"));
				member.setBirthDate(rs.getString("birthDate"));
				member.setEmail(rs.getString("email"));

			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;
	}

	@Override
	public String getId(String memberId) {
		String iid = "";

		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM Member WHERE id=?";

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection(url, "puppy", "0728");

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, memberId);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				iid = rs.getString("id");

			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return iid;
	}

	@Override
	public MyPageView selectMember(String id) {
		MyPageView vo = new MyPageView();

		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM MyPageView WHERE id=?";

		try {
			Connection conn = DriverManager.getConnection(url, "puppy", "0728");

			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, id);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setMemberName(rs.getString("memberName"));
				vo.setPuppyName(rs.getString("puppyName"));
				vo.setBirthYear(rs.getString("birthYear"));
				vo.setSex(rs.getString("sex"));
				vo.setSize(rs.getString("size"));
				vo.setKind(rs.getString("kind"));
				vo.setBirthDate(rs.getString("birthDate"));
				vo.setEmail(rs.getString("email"));
				vo.setPassword(rs.getString("password"));
				vo.setPhoneNumber(rs.getString("phoneNumber"));
				
			}

			rs.close();
			st.close();
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return vo;

	}

	@Override
	public String getDefaultRoleId(String id) {
		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "select roleId from Member where id=?";

		String iid = "";
	
		
		try {
			Class.forName("com.mysql.jdbc.Driver");

		
			Connection con = DriverManager.getConnection(url, "puppy", "0728");

			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);

		
			ResultSet rs = st.executeQuery();
			Member member= new Member();

			if (rs.next()) {
			
				iid = rs.getString("roleId");
			

			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return iid;
	}
//
//	@Override
//	public Member getList(String id, String _password) {
//		String sql = "select * From Member where id =? and password=?";       
//	       String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
//	     
//	         List<CommunityView> list=null;
//	   
//
//	         try {
//	            Class.forName("com.mysql.jdbc.Driver");
//	            
//	           
//	            Connection con = DriverManager.getConnection(url, "puppy", "0728");
//	         
//	             PreparedStatement st = con.prepareStatement(sql);
//	             st.setString(1, id);
//	             st.setString(2, _password);
//	   
//	             
//	             ResultSet rs = st.executeQuery();
//	         
//	             // Model 
//	             list = new ArrayList<>();
//	             
//
//	             while (rs.next()) {
//	            	Member n = new Member();
//	            	n.setId(rs.getString("id"));
//				n.setName(rs.getString("name"));
//				n.setPassword(rs.getString("password"));
//					n.setPhoneNumber(rs.getString("phoneNumber"));
//					n.setBirthDate(rs.getString("birthDate"));
//					n.setEmail(rs.getString("email"));
//
//	                              
//	             
//	         }
//	             
//	         rs.close();
//	         st.close();
//	         con.close();
//	         
//	            
//	         } catch (ClassNotFoundException e) {
//	            // TODO Auto-generated catch block
//	            e.printStackTrace();
//	         } catch (SQLException e) {
//	            // TODO Auto-generated catch block
//	            e.printStackTrace();
//	         }
//	      return n;
//	}

/*	@Override
	public Member getList(String id, String _password) {
		// TODO Auto-generated method stub
		return null;
	}*/

	@Override
	public Member get1(String password) {
		Member member = null;

		String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM Member WHERE password=?";

		// jdbc ̹ ε
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// /
			Connection con = DriverManager.getConnection(url, "puppy", "0728");

			//
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, password);

			//
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				member = new Member();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				member.setPhoneNumber(rs.getString("phoneNumber"));
				member.setBirthDate(rs.getString("birthDate"));
				member.setEmail(rs.getString("email"));

			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;
	}
	
	
	
	   public int updateMember(String id,String email, String password, String phoneNumber, String puppyName, String size, String sex, String birthYear, String Kind) {
	     int result=0;
	      String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
	      String sql = "UPDATE MyPageView SET password=?,email=?, phoneNumber=?, puppyName=?, size= ?, sex=?, birthYear=?, kind=? where id=?";

	     
	      try {
	         Class.forName("com.mysql.jdbc.Driver");

	          Connection conn = DriverManager.getConnection(url, "puppy", "0728");

	         PreparedStatement st = (PreparedStatement) conn.prepareStatement(sql);
	         st.setString(2,email); 
	         st.setString(1,password);
	         st.setString(3, phoneNumber);
	         st.setString(4, puppyName);
	         st.setString(5, size);
	         st.setString(6, sex);
	         st.setString(7, birthYear);
	         st.setString(8, Kind);
	         st.setString(9, id);
	      
	         result = st.executeUpdate();
	         
	         st.close();
	         conn.close();

	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return result;
	   }

}
