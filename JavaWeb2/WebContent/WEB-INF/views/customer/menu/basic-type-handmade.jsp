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
					<img src="../../images/f-37.PNG" /> <label>아침애 수제사료 피부개선</label> <a
						href="basic-type-handmade" class="dots"> <span></span> <span></span>
						<span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-38.PNG" /> <label>도그밥 수제 습식사료
						오리&단호박</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-39.PNG" /> <label>아침애 수제사료 한우</label> <a
						class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
			</div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-40.PNG" /> <label>아침애 수제사료 저단백
						해조류</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-41.PNG" /> <label>도그밥 수제 습식사료
						닭고기&고구마</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-42.PNG" /> <label>하루애 수제사료 오리고기</label> <a
						class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
			</div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-43.PNG" /> <label>아침애 수제사료 스타터 앤
						퍼피</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-44.PNG" /> <label>도그밥 수제 습식사료
						닭고기&칠면조</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-45.PNG" /> <label>도그밥 수제 습식사료
						소고기&관절강화</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
			</div>
			<div class="wrap">
				<div class="tile">
					<img src="../../images/f-46.PNG" /> <label>하루애 수제사료 양고기</label> <a
						class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-47.PNG" /> <label>아침애 수제사료 저칼로리
						곤약 다이어트</label> <a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
				<div class="tile">
					<img src="../../images/f-48.PNG" /> <label>아침애 수제사료 고단백 채식</label>
					<a class="dots"> <span></span> <span></span> <span></span>
					</a>
				</div>
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