package com.puppyfood101.javaweb.jdbcdao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.puppyfood101.javaweb.dao.PuppyDao;
import com.puppyfood101.javaweb.entity.Puppy;

public class JdbcPuppyDao implements PuppyDao {

	@Override
	public int insert(Puppy puppy) {
		int result=0;
		  
        String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
         String sql = "insert into Member(id, name, password,phoneNumber,birthDate,email) values (?,?,?,?,?,?)";
         try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, "puppy", "0728");
            // Statement st = conn.createStatement();
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1,puppy.getId());
            st.setString(2,puppy.getMemberName());
            st.setString(3,puppy.getPuppyName());
            st.setString(4,puppy.getBirthYear());
            st.setString(5,puppy.getSex());
            st.setString(6,puppy.getSize());
            st.setString(7,puppy.getKind());

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
