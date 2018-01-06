<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
   <!--                    헤더  부분                             -->
   <jsp:include page="../inc/header.jsp"></jsp:include>



   <div id="body">
      <div class="content-container">
         <main id="main">
         <div id="main-font">
            <img src="${path}/images/bg-board.png" height="45px" width="45px" />
            <label class="boradlabel"> 관리자페이지</label>
         </div>
         <!-- 본문 타이틀 -->
         <ul class="location">
            <!-- 로케이션 -->
            <li class="first">HOME</li>
            <li>></li>
            <li>후기관리</li>
            <li>></li>
            <li>후기조회</li>
         </ul>
         <br />

         <div id="underbar">
            <br>
            <br>
         </div>

         <a class="btn1 btn-community3" href="review-check2">삭제</a> 

         <table class="table-garo2">
            <thread>
            <tr>
            <span>
               <th class="num">번호</th>
               <th colspan="2" class="title col1">사료명</th>
               <th colspan="3" class="writer">제목</th>
               <th class="date col2">아이디</th>
               <th class="hit col3">등록일</th>
               <th class="col4"><input type="checkbox"></th>
            </span>
            </tr>
            </thread>
            <tbody>            
               <tr>
                  <td>12</td>
                  <td colspan="2" class="left">네츄럴코어 소프트델리5 오리고기 피부와 면역 800g</td>
                  <td class="text-left" colspan="3"><a href="tip1">기존사료를 안먹으려고 하면 한번씩 줘요</a></td>
                  <td>parang11</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>11</td>
                  <td colspan="2" class="left">더독 닥터소프트 IGY 치석치주염예방 1.2kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">치석 예방이 된다고 해서 구매했는데 잘먹어요</a></td>
                  <td>naraebar</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>   
               <tr>
                  <td>10</td>
                  <td colspan="2" class="left">더독 닥터소프트 양고기 1.2kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">이번에 양고기로 바꿔봤어요</a></td>
                  <td>sweetjy01</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>9</td>
                  <td colspan="2" class="left">네츄럴코어 소프트델리2 연어 800g</td>
                  <td class="text-left" colspan="3"><a href="tip1">연어로 바꿔봤는데 둥이가 아주 잘먹어요!</a></td>
                  <td>dungemom</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>8</td>
                  <td colspan="2" class="left text-left">시저 닭고기 캔 100g</td>
                  <td class="text-left" colspan="3"><a href="tip1">닭고기가 들어있어서 만족합니다</a></td>
                  <td>toto</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>7</td>
                  <td colspan="2" class="left text-left">시저 쇠고기와 치즈 캔 100g</td>
                  <td class="text-left" colspan="3"><a href="tip1">습식 사료는 이거만 먹여요</a></td>
                  <td>yangah95</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>6</td>
                  <td colspan="2" class="left text-left">네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">인기상품이라서 한번 먹여봤는데 잘먹네요</a></td>
                  <td>yangah95</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>5</td>
                  <td colspan="2" class="left text-left">네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">저희집 강아지도 좋아하네요</a></td>
                  <td>cocobaek</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>4</td>
                  <td colspan="2" class="text-left left">로얄캐닌 푸들 어덜트 1.5kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">푸들에게 딱 맞는 사료네요</a></td>
                  <td>toto</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>3</td>
                  <td colspan="2" class="text-left left">now 그레인프리 어덜트 작은알갱이 2.72kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">코코가 정말 좋아하네요!!</a></td>
                  <td>100jiwon</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
               <tr>
                  <td>2</td>
                  <td colspan="2" class=" text-left left">네츄럴코어 유기농 에코 2 오리고기 작은알갱이 2kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">통곡물이 들어있어서 만족해요</a></td>
                  <td>lovelyah918</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>            
               <tr>
                  <td>1</td>
                  <td colspan="2" class="text-left left">네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</td>
                  <td class="text-left" colspan="3"><a href="tip1">네츄럴코어 홀리스틱! 저희집 강아지가 정말 잘먹어요!!</a></td>
                  <td>naraebar</td>
                  <td>2017-09-14</td>
                  <td><input type="checkbox"></td>
               </tr>
            </tbody>
         </table>
            <div class="listnum">
            <ul>
               <li>1</li>
               <li>2</li>
               <li>3</li>
               <li>4</li>
               <li>5</li>
            </ul>
         </div>
      </main>

   <!-- aside  부분 -->
 <jsp:include page="../../admin/inc/aside.jsp"></jsp:include>

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