package com.puppyfood101.javaweb.jdbcdao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.puppyfood101.javaweb.dao.DogFoodDao;
import com.puppyfood101.javaweb.entity.DogFood;



public class JdbcDogFoodDao implements DogFoodDao {

   @Override
   public DogFood get(String number, String name, String foodType, String recoAge, String recoSkinType, String feature,
         String ingredient) {
      DogFood df = null;
         
         String url = "jdbc:mysql://211.238.142.247/puppydb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
         String sql = "SELECT * FROM DogFood WHERE number=?";
         
         // jdbc     ̹   ε 
         try {
            Class.forName("com.mysql.jdbc.Driver");

            //      /    
            Connection con = DriverManager.getConnection(url, "puppy", "0728");

            //     
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, number);
            st.setString(2, name);
            st.setString(3, foodType);
            st.setString(4, recoAge);
            st.setString(5, recoSkinType);
            st.setString(6, feature);
            st.setString(7, ingredient);
            

            //             
            ResultSet rs = st.executeQuery();

            if(rs.next()) {
               df = new DogFood();
                  df.setNumber(rs.getString("number"));
                  df.setName(rs.getString("name"));
                  df.setFoodType(rs.getString("foodtype"));
                  df.setRecoAge(rs.getString("recoage"));
                  df.setRecoSkinType(rs.getString("recoskintype"));
                  df.setFeature(rs.getString("feature"));
                  df.setIngredient(rs.getString("ingredient"));
                  
            }

            rs.close();
            st.close();
            con.close();

         } catch (ClassNotFoundException e) {
            e.printStackTrace();
         } catch (SQLException e) {
            e.printStackTrace();
         }
         
         return df;
   }

   
   
}