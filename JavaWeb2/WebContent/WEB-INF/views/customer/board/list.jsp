<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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


   <!--                      visual 부분                           -->
   <jsp:include page="inc/visual-community.jsp"></jsp:include>

   <div id="body"  style="min-height: 900px;">
      <div class="content-container" >
         <main id="main" >
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
         
              <div class="btn-community">

         <a class="btn1 btn-community2" href="reg">글쓰기</a> 
 
      </div>
         <table class="table-garo2">

            <tr>
               <th class="num w60">번호</th>
               <th class="tit w100">제목</th>
               <th class="id w70">작성자</th>
               <th class="regDate w70">작성일</th>
               <th class="w60 hit">조회수</th>
            </tr>
               <c:forEach var="n" items="${list}">
               <tr>
                  <td class="w60">${n.number}</td>
                  <td class="tit text-left w100"><a href="detail?number=${n.number}">${n.title}</a></td>
                  <td>${n.id}</td>
                  <td class="w70">${n.regDate}</td>
                  <td class="w60">${n.hit}</td>
               </tr>
            </c:forEach>
         </table>
 

         <c:set var="page" value="${param.p}" /> 
         <c:set var="startNum" value="${page-((page-1)%5)}" /> <!-- 밑에 page 개수 몇개로 할지 설정 --> 
         <c:set var="lastNum" value="${fn:substringBefore(count%10 ==0 ? count/10 : count/10+1, '.')}" />

         <div class="listnum">
            <ul><li>
               <a href="?p=1">이전</a></li>
            
          
               <c:forEach var="i" begin="0" end="4">
               
               <c:set var="strong" value=""/>
               <c:if test="${startNum+i == page }">
                   <c:set var="strong" value="text-strong"/>
                  </c:if>
                  
                  <c:if test="${startNum+i <= lastNum }">
                <li><a class="${strong}" href="?p=${startNum+i}">${startNum+i}</a></li>
                  </c:if>
                  
                  <c:if test="${startNum+i > lastNum }">
                  <li>${startNum+i}</li>
                  </c:if>
                  
          
                  
               </c:forEach>
                
            </ul>
     
               <c:if test="${lastNum >= startNum+5 }">
               <a href="?p=${startNum+5}">다음</a>
               </c:if>
         
         </div> 
        
   
         </main>

         <!-- aside  부분 -->
         <jsp:include
            page="../../../views/customer/board/inc/aside-community.jsp"></jsp:include>


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