<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import= "com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao, com.puppyfood101.javaweb.dao.MemberDao, com.puppyfood101.javaweb.entity.MyPageView" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>

<link href="${path}/css/style-newmember-join.css" type="text/css"
   rel="stylesheet" />
</head>
<body>
  
   <div class="join-wrapper">
      <div class="main">
         <div class="join-logo">
            <img src="${path}/images/logo.png" alt="로고" />
         </div>
         <form class="center" method="post">
            <fieldset>
               <legend>반려견 정보</legend>
               <br> <br>
               <ol>
                <!--   <div class="dogplus">
                     <input class="btn join-button" type="button" value="반려견 추가" onclick="newmember-join-dog"/>
                  </div> -->
                  <br>
                  <br>
                  <li><label for="dogname">이름</label> <input id="name"
                     name="name" type="text" placeholder="반려견의 이름을 써주세요." size=30 style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; height: 30px;" autofocus="autofocus"
                     required></li>
                  <li><label for="sex">성별</label> <select name="sex"
                     required style="height: 30px; width: 150px;">
                        <option value="">성별  선택</option>
                        <option value="암컷">암컷</option>
                        <option value="수컷">수컷</option>
                  </select></li>
                  <li><label for="birth">생일년도</label> <input id="birth"
                     name="birth" type="text" placeholder="반려견의 테어난 년도를 써주세요." size=30 style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; height: 30px;" required></li>
                  <li><label for="size">사이즈</label> <select name="size"  style="height: 30px; width: 150px;"
                     required>
                        <option value="">사이즈 선택</option>
                        <option value="소형견">소형견</option>
                        <option value="중형견">중형견</option>
                        <option value="대형견">대형견</option>
                  </select></li>
                  <li><label for="dogkind">견종</label> <input id="kind"
                     name="kind" type="text" placeholder="반려견의 종타입을 써주세요."  size=30 style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px; height: 30px;"required></li>

               </ol>
            </fieldset>
            <br> <br>

            <div id="center">
               <input src="newmember-join" class="btn1 join-button" type="button" value="이전">  
               <input class="btn1 join-button" type="reset" value="다시 작성">
               <input class="btn1 join-button" type="submit" value="다음">
            </div>
         </form>
      </div>
   </div>
</body>
</html>