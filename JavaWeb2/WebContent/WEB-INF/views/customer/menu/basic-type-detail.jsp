<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../inc/header.jsp"></jsp:include>

<!--                    visual  부분                             -->
<jsp:include page="inc/visual-basic.jsp"></jsp:include>

      <div id="body">
         <div class="content-container">
            <main id="main">
            <div id="main-font">
            <img src="${path}/images/bg-board.png" height="45px" width="45px" />
            <label class="boradlabel">사료정보</label>
         </div>
         <!-- 본문 타이틀 -->
         <ul class="location" id="btdetail">
            <!-- 로케이션 -->
            <li class="first" >HOME>기본사료>건식사료>사료정보</li>
         </ul>
         </br>
         <div id="underbar"></div>
         <br />
         <br />
               
               <div>
                        <img class="food1" src="../../images/f-1.jpg" />
                             <table class="table-garo-mypage" id="table-btd">
                              <tr>
                                 <th>번호</th>
                                  <td>1</td>
                              </tr>
                              <tr>
                                 <th>사료명</th>
                                <td>네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</td>
                             </tr>
                             <tr> 
                                 <th>사료유형</th>
                                <td>건식</td>
                             </tr>
                             <tr>
                                 <th>권장나이</th>
                                <td>모든연령</td>
                             </tr>
                             <tr>
                                 <th>권장피부타입</th>
                                <td>해당없음</td>
                             </tr>
                             <tr>
                                 <th>특징</th>
                                <td>소화기능 개선 및 설사예방, 변냄새 개선</td>
                             </tr>
                             <tr>
                                 <th>원재료</th>
                                <td>오리 살코기, 유기농 옥수수, 유기농 콩, 들깨, 닭기름, 비트펄프, 뼈를 발라낸 생선, 인산 칼슘, 우유분말, 유기농 천연향미제, 키토산 올리고당, 블루베리, 유기농 당근, 유기농 미나리, 유기농 시금치, 알긴산 올리고당, 염화콜린, 비타민 나무열매, 유카시디게라 추출물, 유산균, 각종 비타민과 미네랄</td>
                             </tr>
                           </table>
                           </div>
                           <div>
                           <table class="table-garo-mypage">
                              <tr>
                                 <th>번호</th>
                                 <th>후기제목</th>
                                 <th>작성자</th>
                                 <th>작성일</th> 
                              </tr>
                              <tr>
                                <td>1</td>
                                  <td class="tit">강아지가 정말 잘먹네요</td>
                                <td>naraebar</td>
                                <td>2017-09-10</td>      
                             </tr>
                              <tr>
                                <td>2</td>
                                  <td>완전 추천이요!</td>
                                <td>hihi11</td>
                                <td>2017-09-10</td>      
                             </tr>
                              <tr>
                                <td>3</td>
                                  <td>좋아요</td>
                                <td>lovelyah918</td>
                                <td>2017-09-11</td>      
                             </tr>
                              <tr>
                                <td>4</td>
                                <td>추천추천</td>
                                  <td>moosifer</td>
                                <td>2017-09-12</td>      
                             </tr>
                           </table>
            
            </main>

            
      <!-- aside  부분 -->
      <jsp:include page="../../../views/customer/menu/inc/aside-basic.jsp"></jsp:include>
      </div>
       </div>
   </div>
   
   <!--                            footer 부분                      -->
   <jsp:include page="../../inc/footer.jsp"></jsp:include>
      
      <script>
      $(function() {
         var Accordion = function(el, multiple) {
            this.el = el || {};
            // more then one submenu open?
            this.multiple = multiple || false;

            var dropdownlink = this.el.find('.dropdownlink');
            dropdownlink.on('click', {
               el : this.el,
               multiple : this.multiple
            }, this.dropdown);
         };

         Accordion.prototype.dropdown = function(e) {
            var $el = e.data.el, $this = $(this),
            //this is the ul.submenuItems
            $next = $this.next();

            $next.slideToggle();
            $this.parent().toggleClass('open');

            if (!e.data.multiple) {
               //show only one menu at the same time
               $el.find('.submenuItems').not($next).slideUp().parent()
                     .removeClass('open');
            }
         }

         var accordion = new Accordion($('.accordion-menu'), false);
      })
   </script>

</body>
</html>