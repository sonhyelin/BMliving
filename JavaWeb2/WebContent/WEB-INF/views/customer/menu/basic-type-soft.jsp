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
				<label class="boradlabel">수제 사료</label>
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
				<li>수제 사료</li>
			</ul>
			<br />
			<div id="underbar"></div>
			<br />
			<br />

			   <div class="wrap">
               <div class="tile">
                  <img src="../../images/f-13.PNG" />
                 
                     <label>네츄럴코어 소프트델리2 연어 800g</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
              
                  </div>
               <div class="tile">
                  <img src="../../images/f-14.PNG" />
                 
                     <label>더독 닥터소프트 양고기 1.2kg</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                
                  </div>
               <div class="tile">
                  <img src="../../images/f-15.PNG" />
                 
                     <label>런치박스 오리고기 1.4kg</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                  
               </div>
               </div>
                <div class="wrap">
               <div class="tile">
                  <img src="../../images/f-16.PNG" />
                
                     <label>더독 닥터소프트 연어와 감자 3kg</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                 
                  </div>
               <div class="tile">
                  <img src="../../images/f-17.PNG" />
                
                     <label>더독 닥터소프트 식이섬유 노령견용 1.2kg</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                 
                  </div>
               <div class="tile">
                  <img src="../../images/f-18.PNG" />
                 
                     <label>더독 닥터소프트 치킨 시니어 3kg</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                  
               </div>
               </div>
                <div class="wrap">
               <div class="tile">
                  <img src="../../images/f-19.PNG" />
                 
                     <label>네츄럴코어 소프트델리1 치킨 800g</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
               
                  </div>
               <div class="tile">
                  <img src="../../images/f-20.PNG" />
                     <label>피엔피 완두콩&연어 900g</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                 
                  </div>
               <div class="tile">
                  <img src="../../images/f-21.PNG" />
                 
                     <label>제니스독 양고기와 현미 스몰브리드 1.2kg</label>
                     <!-- label = h1로 바꾸기 -->
                     <a class="dots">
                        <span></span> <span></span> <span></span>
                     </a>
                
               </div>
               </div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-22.PNG" /> <label>지위픽 독 에어드라이 소고기
						1kg</label>
					<!-- label = h1로 바꾸기 -->
					<a class="dots"> <span></span> <span></span> <span></span>
					</a>

				</div>
				<div class="tile">
					<img src="../../images/f-23.PNG" /> <label>데이스포 제스트 스킨앤코트
						1.2kg</label>
					<!-- label = h1로 바꾸기 -->
					<a class="dots"> <span></span> <span></span> <span></span>
					</a>

				</div>
				<div class="tile">
					<img src="../../images/f-24.PNG" />
					<div class="text">
						<label>한줌의사료 스킨&코트 1kg</label>
						<!-- label = h1로 바꾸기 -->
						<a class="dots"> <span></span> <span></span> <span></span>
						</a>

					</div>
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