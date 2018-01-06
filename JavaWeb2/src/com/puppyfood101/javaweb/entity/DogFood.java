package com.puppyfood101.javaweb.entity;

public class DogFood {
   private String number;
   private String name;
   private String foodType;
   private String recoAge;
   private String recoSkinType;
   private String feature;
   private String ingredient;
   
   public DogFood() {
      
   }

   public DogFood(String number, String name, String foodType, String recoAge, String recoSkinType, String feature,
         String ingredient) {
      super();
      this.number = number;
      this.name = name;
      this.foodType = foodType;
      this.recoAge = recoAge;
      this.recoSkinType = recoSkinType;
      this.feature = feature;
      this.ingredient = ingredient;
   }

   public String getNumber() {
      return number;
   }

   public void setNumber(String number) {
      this.number = number;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getFoodType() {
      return foodType;
   }

   public void setFoodType(String foodType) {
      this.foodType = foodType;
   }

   public String getRecoAge() {
      return recoAge;
   }

   public void setRecoAge(String recoAge) {
      this.recoAge = recoAge;
   }

   public String getRecoSkinType() {
      return recoSkinType;
   }

   public void setRecoSkinType(String recoSkinType) {
      this.recoSkinType = recoSkinType;
   }

   public String getFeature() {
      return feature;
   }

   public void setFeature(String feature) {
      this.feature = feature;
   }

   public String getIngredient() {
      return ingredient;
   }

   public void setIngredient(String ingredient) {
      this.ingredient = ingredient;
   }
   
   
}