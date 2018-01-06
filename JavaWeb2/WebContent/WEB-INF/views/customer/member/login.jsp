<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-login.css" type="text/css"
   rel="stylesheet" />
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script>
   $(function() {      
      var theWindow        = $(window),
         $bg              = $("#bg"),
         aspectRatio      = $bg.width() / $bg.height();                           
      function resizeBg() {         
         if ( (theWindow.width() / theWindow.height()) < aspectRatio ) {
            $bg
               .removeClass()
               .addClass('bgheight');
         } else {
            $bg
               .removeClass()
               .addClass('bgwidth');
         }                  
      }                           
      theWindow.resize(function() {
         resizeBg();
      }).trigger("resize");   
   });
</script>
<script src=""></script>

</head>
<body>
    <video autoplay loop poster="${path}WebContent/images/main-bg-9.jpg">
      <source src="${path}/images/Puppy.mp4" type="video/mp4">
   </video>
   <br><br><br><br><br><br>
   <div class="wrapper">
      <div class="main">
         <div class="logo">
            <img src="${path}/images/logo.png" alt="로고" />
         </div>
        
        <form method="post">
            <div class="login_box">
   
               <div class="input_login">
                  <input type="id" name="id" placeholder="아이디를 입력하세요">
               </div>
   
               <div class="input_login">
                  <input type="password" name="password" placeholder="비밀번호를 입력하세요">
               </div>
   
               <div class="check">
                  <label><input type="checkbox">아이디 저장</label>
               </div>
   
               <div class="login">
                  <input type="submit" name="btn" value="로그인">
               </div>
   
               <div class="last">
                  <div class="join">
                     <a class="join" href="newmember-agree">회원가입</a>
                  </div>
                  <div class="id_password_search">
                     <a class="id_password_search" href="find-id-pw">아이디/비밀번호 찾기</a>
                  </div>
               </div>
            </div>
         </form>
         
      </div>
   </div>
</body>
</html>