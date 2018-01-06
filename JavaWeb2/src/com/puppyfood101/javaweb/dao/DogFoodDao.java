

package com.puppyfood101.javaweb.dao;

import java.util.List;

import com.puppyfood101.javaweb.entity.DogFood;
import com.puppyfood101.javaweb.entity.MyPageView;

public interface DogFoodDao {

   DogFood get(String number, String name, String foodType, String recoAge, String recoSkinType, String feature,
         String ingredient);
}