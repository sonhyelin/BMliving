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
 <jsp:include page="inc/visual-cm.jsp"/>
      
       <div id="body">
            <div class="content-container">
            <main id = "main">
               <div id="main-pont">
                 <label class="title-cm">오직 회원님만을 위한 사료추천 <a class="heart"></a></label>                 
                 
               <div class="wrap-basic">
                  <div class="content-container2 floor">
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-58.PNG"/>
                        <label>풀무원 아미오 유기농</label>
                     </div>
   
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-59.PNG" />
                        <label>풀무원 아미오 유기농 어덜트</label>
                     </div>
   
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-60.PNG" />
                        <label>스마트하트골드 나인케어</label>
                     </div>
                  </div>
               </div>
               
                <div class="wrap-basic">
                  <div class="content-container2 floor">
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-52.PNG"/>
                        <label>더독 닥터소프트 치킨</label>
                     </div>
   
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-53.PNG" />
                        <label>오리젠 오리지널 독</label>>
                     </div>
   
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-54.PNG" />
                        <label>시저 쇠고기와 치즈 캔</label>
                     </div>
                  </div>
               </div>
               
               <div class="wrap-basic" >
                  <div class="content-container2 floor">
                     <div class="tile"style="width: 250px;">
                        <img src="../../images/f-55.PNG"/>
                        <label>시저 닭고기 캔</label>
                     </div>
   
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-56.PNG" />
                        <label>폴스글레이드 브라운라이스</label>
                     </div>
   
                     <div class="tile" style="width: 250px;">
                        <img src="../../images/f-57.PNG" />
                        <label>폴스글레이드 그레인프리</label>
                     </div>
                  </div>
               </div>
            </div>
            </main>
            
 <!-- aside  부분 -->
          <jsp:include page="../../../views/customer/menu/inc/aside-cm.jsp"></jsp:include>
   
       
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