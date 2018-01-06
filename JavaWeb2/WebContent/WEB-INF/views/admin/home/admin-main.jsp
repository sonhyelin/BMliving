<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/main-style.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../../views/admin/inc/header.jsp"></jsp:include>

<div id="body">
      <div class="content-container">
         <main id="main"> <img src="${path}/images/main-bg-2.png"
            alt="image" />
         <h1></h1>
         <div style="text-align: center">

            <!-- <div id="bodyment">
               <span style="color: white">강아지 사료 맞춤 추천 서비스</span><br /> <span
                  style="color: white">강아지의 연령, 종, 사이즈, 질병에 따른 당신의 강아지 만을 위한
                  사료 추천</span><br />
                <p>강아지 사료 맞춤 추천 서비스</p>
         <p>강아지의 연령, 종, 사이즈, 질병에 따른 당신의 강아지 만을 위한 사료 추천</p>
            </div> -->
         </div>
         </main>

         <aside id="aside">
            <h1 class="hidden">서브 메뉴</h1>
            <nav id="testNav">
               <div class="thumbs">
                  <h1 class="hidden">인기 사료</h1>
                  <ul>
                     <li><a href="${path}/images/main-bg-2.png"><img
                           src="${path}/images/main-bg-2.png"></a></li>

                     <li><a href="${path}/images/main-bg-4.jpg"><img
                           src="${path}/images/main-bg-4.jpg"></a></li>

                     <li><a href="${path}/images/main-bg-5.jpg"><img
                           src="${path}/images/main-bg-5.jpg"></a></li>

                     <li><a href="${path}/images/main-bg-6.jpg"><img
                           src="${path}/images/main-bg-6.jpg"></a></li>
                  </ul>
               </div>
            </nav>
         </aside>
      </div>
   </div>

<!--                            footer 부분                      -->
<jsp:include page="../../inc/footer.jsp"></jsp:include>
   
   <script>
      $(".thumbs a").click(function() { //클릭 시
         var imgPath = $(this).attr("href"); //클릭한 a태그의 하이퍼링크를 변수저장
         $("#main>img").attr({
            src : imgPath
         }) //메인 이미지의 주소 속성에 할당
         .hide() //fadein()효과를 보여주기 위해 숨김처리
         .fadeIn(); //fadeIn()
         return false; //<a> 의 본래기능 (하이퍼링크) 작동방지
      });
   </script>
</body>
</html>