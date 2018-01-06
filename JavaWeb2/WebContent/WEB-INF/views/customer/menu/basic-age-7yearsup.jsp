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
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
   <!--                    헤더  부분                             -->
<jsp:include page="../inc/header.jsp"></jsp:include>
 
   
 <!--                      visual 부분                           -->
 <jsp:include page="inc/visual-basic.jsp"/>
      
        <div id="body">
         <div class="content-container">
            <main id="main">
            <div id="main-font">
            <img src="${path}/images/bg-board.png" height="45px" width="45px" />
            <label class="boradlabel">7년 이상 노령견</label>
         </div>
         <!-- 본문 타이틀 -->
         <ul class="location" id="btdetail2">
            <!-- 로케이션 -->
            <li class="first">HOME</li>
            <li>></li>
            <li>기본사료</li>
            <li>></li>
            <li>강아지 연령별</li>
            <li>></li>
            <li>7년 이상 노령견</li>
         </ul>
         </br>
         <div id="underbar"></div>
         <br />
         <br />
                <div class="wrap">
               <div class="tile">
                  <img src="../../images/f-31.PNG" />
                     <label>K9 내츄럴 도그 램 그린 트라이프 캔</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                  </div>
               <div class="tile">
                  <img src="../../images/f-32.PNG" />
                     <label>테라카니스 퓨어미트 치킨</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                  </div>
               <div class="tile">
                  <img src="../../images/f-33.PNG" />
                     <label>플래티넘 메뉴 퓨어 피쉬</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
               </div>
               </div>
                 <div class="wrap">
               <div class="tile">
                  <img src="../../images/f-34.PNG" />
                     <label>테라카니스 미니 치킨과 파스닙</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                  </div>
               <div class="tile">
                  <img src="../../images/f-35.PNG" />
                     <label>웰니스 코어 살몬&화이트피쉬 캔</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                  </div>

            </div>
            </main>
            
   <!-- aside  부분 -->
 <jsp:include page="../../../views/customer/menu/inc/aside-basic.jsp"></jsp:include>
   
       
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