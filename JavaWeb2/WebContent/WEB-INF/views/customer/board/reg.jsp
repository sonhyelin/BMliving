<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${path}/css/reset.css" type="text/css" rel="stylesheet" />
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
</head>
    <!--                    헤더  부분                             -->
	<jsp:include page="../inc/header.jsp"></jsp:include>


 <!--                      visual 부분                           -->
   <jsp:include page="inc/visual-community.jsp"></jsp:include>
    
   
   <div id="body" class="clearfix">
      <div class="content-container">      
      <main id="main">
	    <div id="main-font">
         <img src="${path}/images/bg-board.png" height="45px" width="45px"/>
         <label class="boradlabel">
            자유 게시판</label></div><!-- 본문 타이틀 -->
                  <ul class="location"><!-- 로케이션 -->
                        <li class="first">HOME</li>
                     <li>></li>
                     <li>커뮤니티</li>
                     <li>></li>
                     <li>자유 게시판</li>
                     </ul>
            <br />
         
         <div id="underbar"><br><br></div>
         
       <form method="post">
          <table border="1" class="table-garo2">
          
             <tr>
               <th>제목</th>
               <td class="hi" colspan="3"><input type="text" name="title"/></td>
            </tr>
             <tr>
               <th colspan="4">내용</th>
            </tr>
            <tr>
               <td class="editcontent" colspan="4"><textarea name="content"></textarea></td>
            </tr>
            </table>
            <br />
            <div class="regbutton" >
               <a><input type="submit"class="btn1"value="등록" style="width: 80px; border: 0px;"/></a>
               <a href="list" class="btn1">취소</a>
            </div>
         </form>
       
      </main> 
      <!-- aside  부분 -->
	<jsp:include
				page="../../../views/customer/board/inc/aside-community.jsp"></jsp:include>
      </div>
  </div>
   
    <!-- footer 부분 -->
    <jsp:include page="../../inc/footer.jsp"/>   
   
</body>
</html>