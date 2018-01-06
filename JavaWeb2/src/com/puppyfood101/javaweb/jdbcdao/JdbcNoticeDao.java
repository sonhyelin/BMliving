package com.puppyfood101.javaweb.jdbcdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.puppyfood101.javaweb.dao.NoticeDao;
import com.puppyfood101.javaweb.entity.Board;
import com.puppyfood101.javaweb.entity.CommunityView;


public class JdbcNoticeDao implements NoticeDao {

   public List<CommunityView> getList(int page, String query){
       String sql = "select * From CommunityView where title like ? order by number desc limit ?, 10";       
       String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
     
         List<CommunityView> list=null;
         int offset = (page-1)*10;

         try {
            Class.forName("com.mysql.jdbc.Driver");
            
           
            Connection con = DriverManager.getConnection(url, "puppy", "0728");
         
             PreparedStatement st = con.prepareStatement(sql);
             st.setString(1, "%"+query+"%");
             st.setInt(2, offset);
   
             
             ResultSet rs = st.executeQuery();
         
             // Model 
             list = new ArrayList<>();
             

             while (rs.next()) {
            	CommunityView n = new CommunityView();
                n.setNumber(rs.getInt("number"));
                n.setTitle(rs.getString("title"));
                n.setId(rs.getString("id"));
                n.setContent(rs.getString("content"));
                n.setHit(rs.getInt("hit"));
                n.setRegDate(rs.getDate("regDate"));
                              
                list.add(n);
         }
             
         rs.close();
         st.close();
         con.close();
         
            
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      return list;
   }

   public int getCount() {
      int count =0;
      
         String sqlCount = "select count(number) count from CommunityView";         
         String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
         
         try {
            Class.forName("com.mysql.jdbc.Driver");
            
       
            Connection con = DriverManager.getConnection(url, "puppy", "0728");
         
             Statement stCount = con.createStatement();
             ResultSet rsCount = stCount.executeQuery(sqlCount);
             rsCount.next();
             count = rsCount.getInt("count");
             
         
         rsCount.close();
         con.close();
         
            
         } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
      return count;
   }

   @Override
   public CommunityView get(int number) {
      
      CommunityView n = null;
      String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
      String sql = "SELECT * FROM CommunityView WHERE number = ?";
 
      try {
         Class.forName("com.mysql.jdbc.Driver");

         Connection conn = DriverManager.getConnection(url, "puppy", "0728");

        /* number = request.getInt("number");*/
       
         
         PreparedStatement st = (PreparedStatement) conn.prepareStatement(sql);
         st.setInt(1, number);
        
         ResultSet rs = st.executeQuery();

         while (rs.next()) {
            n = new CommunityView();
            n.setNumber(rs.getInt("number"));
            n.setTitle(rs.getString("title"));
            n.setContent(rs.getString("content"));
            n.setId(rs.getString("id"));
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
      return  n;
   }

   @Override
   public int update(int number, String title, String content) {
      int result =0;
      String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
      String sql = "UPDATE Board SET title=?, content=? where number=?";

     
      try {
         Class.forName("com.mysql.jdbc.Driver");

          Connection conn = DriverManager.getConnection(url, "puppy", "0728");

         PreparedStatement st = (PreparedStatement) conn.prepareStatement(sql);
         st.setString(1,title); 
         st.setString(2,content);
         st.setInt(3, number);
      
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
	public int updateHit(int number) {
		int result = 0;
		 String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		// JDBC 드라이버 로드
		try {
			Class.forName("com.mysql.jdbc.Driver");

			String sql = "update Board set hit = hit+1 where number = ?";
		    Connection con = DriverManager.getConnection(url, "puppy", "0728");
			/* Statement st = con.createStatement(); */
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, number);

			result = st.executeUpdate();
			// 업데이트된 row 개수 알려줌

			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
  





}