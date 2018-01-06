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
            <label class="boradlabel">건식</label>
         </div>
         <!-- 본문 타이틀 -->
         <ul class="location" id="btdetail2">
            <!-- 로케이션 -->
            <li class="first">HOME</li>
            <li>></li>
            <li>기본사료</li>
            <li>></li>
            <li>강아지 사료 타입별</li>
            <li>></li>
            <li>건식</li>
         </ul>
         <br/>
         <div id="underbar"></div>
         <br />
         <br />
      
        	<div class="wrap">
				<div class="tile">
					<img src="../../images/f-1.jpg" />
						<label>네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</label> <a
							href=basic-type-detail class="dots"> <span></span> <span></span>
							<span></span>
						</a>
					
				</div>
				<div class="tile">
					<img src="../../images/f-2.jpg" />
					
						<label>네츄럴코어 유기농 에코 2 오리고기 작은알갱이</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
					
				</div>
				<div class="tile">
					<img src="../../images/f-3.jpg" />
				
						<label>now 그레인프리 어덜트 작은알갱이</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
				
				</div>
			</div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-4.jpg" />
					
						<label>네츄럴코어 유기농 에코 2 오리고기 작은알갱이</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
				
				</div>
				<div class="tile">
					<img src="../../images/f-5.jpg" />
					
						<label>ANF 프리미엄 램28 양고기</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
					
				</div>
				<div class="tile">
					<img src="../../images/f-6.jpg" />
					
						<label>now 그레인프리 퍼피 작은알갱이</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
					
				</div>
			</div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-7.jpg" />
					
						<label>네츄럴코어 유기농 에코 4 오리고기 슬림다운</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
				
				</div>
				<div class="tile">
					<img src="../../images/f-8.jpg" />
					
						<label>네츄럴코어 유기농 에코 6 센시티브 솔루션 연어 작은알갱이</label> <a class="dots">
							<span></span> <span></span> <span></span>
						</a>
					
				</div>
				<div class="tile">
					<img src="../../images/f-9.jpg" />
					
						<label>로얄캐닌 푸들 어덜트</label> <a class="dots"> <span></span> <span></span>
							<span></span>
						</a>
				
				</div>
			</div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-10.jpg" />
				
						<label>네츄럴코어 유기농 에코 1 양고기 작은알갱이</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
				
				</div>
				<div class="tile">
					<img src="../../images/f-11.jpg" />
				
						<label>네츄럴코어 유기농 에코 6 센시티브 솔루션 연어 작은알갱이</label> <a class="dots">
							<span></span> <span></span> <span></span>
						</a>
					
				</div>
				<div class="tile">
					<img src="../../images/f-12.jpg" />
					
						<label>로얄캐닌 미니 인도어 주니어</label> <a class="dots"> <span></span>
							<span></span> <span></span>
						</a>
					</div>
				</div>

              </main>
      <!-- aside  부분 -->
      <jsp:include page="../../../views/customer/menu/inc/aside-basic.jsp"></jsp:include>
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