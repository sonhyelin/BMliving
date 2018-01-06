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
<jsp:include page="inc/visual-mypage.jsp"></jsp:include>

      <div id="body">
         <div class="content-container">
            <main id="main">
            <div id="main-font">
            <img src="${path}/images/bg-board.png" height="45px" width="45px" />
            <label class="boradlabel"> 마이 페이지</label>
         </div>
         <!-- 본문 타이틀 -->
         <ul class="location" style="padding-left: 75px;">
            <!-- 로케이션 -->
            <li class="first">나의찜상품>찜상품조회</li>
         </ul>
         </br>
         <div id="underbar"></div>
         <br />
         <br />
               
               <div class="wrap-like">
                  <div class="tile">
                     <img src="../../images/f-57.PNG"/>
                     <label>폴스글레이드 그레인프리</label>
                     <br/>
                      <a class="heart2"></a>
                  </div>
                  <div class="tile">
                     <img src="../../images/f-58.PNG" />
                     <label>풀무원 아미오 유기농</label>
                     <br/>
                      <a class="heart2"></a>
                   </div>
                  <div class="tile">
                     <img src="../../images/f-59.PNG" />
                     <label>풀무원 아미오 유기농</label>
                     <br/>
                      <a class="heart2"></a>
                  </div>
               </div>
               
               <div class="wrap-like">
                  <div class="tile">
                     <img src="../../images/f-49.PNG"/>
                     <label>now 그레인프리 어덜트</label>
                     <br/>
                      <a class="heart2"></a>
                  </div>
                  <div class="tile">
                     <img src="../../images/f-50.PNG" />
                     <label>로얄캐닌 푸들 어덜트</label>
                     <br/>
                      <a class="heart2"></a>
                   </div>
                  <div class="tile">
                     <img src="../../images/f-51.PNG" />
                     <label>오리젠 오리지널 독</label>
                     <br/>
                      <a class="heart2"></a>
                  </div>
               </div>
            
            </main>

            
      <!-- aside  부분 -->
      <jsp:include page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
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