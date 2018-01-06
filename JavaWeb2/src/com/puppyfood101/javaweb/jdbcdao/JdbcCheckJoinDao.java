package com.puppyfood101.javaweb.jdbcdao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcCheckJoinDao {
   
   public int chkId(String id){
           
       String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
           String sql = "SELECT id FROM Member WHERE id=?";

           try {
              Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection(url, "puppy", "0728");

                PreparedStatement st = con.prepareStatement(sql);
                st.setString(1, id);

                ResultSet rs = st.executeQuery();
                
                if(rs.next())
                   return 0;

                rs.close();
                st.close();
                con.close();
                
          } catch (ClassNotFoundException e) {
             e.printStackTrace();
          } catch (SQLException e) {
             e.printStackTrace();
          } 
          return 1;

          }

/*   public String chkEmail(String chkEmail) {
      
         
        int rst = 0;
        
        String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
        String sql = "SELECT * FROM Member WHERE email=?";

        try{
           Connection conn = DriverManager.getConnection(url, "puppy", "0728");
           
           PreparedStatement  ps = conn.prepareStatement(sql);
            ps.setString(1, chkEmail);
            ResultSet rs = ps.executeQuery();
            
            if(rs.next()){
               rst = 1;
            }
            
            rs.close();
             ps.close();
             conn.close();
            
        }catch(Exception e){
           e.printStackTrace();
        }
           return rst;
   }*/
}