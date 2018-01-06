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


	<!--                      visual 부분                           -->

	<jsp:include page="inc/visual-community.jsp"></jsp:include>

	<div id="body">
		<div class="content-container">
			<main id="main">
			<div id="main-font">
				<img src="${path}/images/bg-board.png" height="45px" width="45px" />
				<label class="boradlabel"> 돌봄 TIP</label>
			</div>
			<!-- 본문 타이틀 -->
			<ul class="location">
				<!-- 로케이션 -->
				<li class="first">HOME</li>
				<li>></li>
				<li>커뮤니티</li>
				<li>></li>
				<li>돌봄 TIP</li>
			</ul>
			<br />

			<div id="underbar">
				<br> <br>
			</div>
			<form>
				<table class="table-garo2">
					<tr>
						<th>제목</th>
						<td colspan="3">애완견 관련 팁 3가지</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td colspan="3">2017-09-14</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>관리자</td>
						<th>조회수</th>
						<td>10</td>
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr>
						<td class="editcontent" colspan="4">
						<img src="${path}/images/tip1.jpg" style="margin-left: 250px;"/> <br />
						<br />
						<br />
						1. 애완견 칫솔질을 시킬 때
						애완견 칫솔질에 어려움이 있다면 개껌이나 로프같은 장난감에 치약을 묻혀서 함께 놀아주세요
						<br />
						<br />
						2. 애완견이 이불에 소변을 봤을 경우
						애완견이 이불이나 베개에 소변을 봤다면, 먼저 베이킹 소다를 뿌려 소변을 흡수시킨 뒤,
						진공청소기로 빨아들이면 빨래가 쉬워집니다
						<br />
						<br />
						3. 애완견 약 먹일때!
						애완견이 약을 안먹으려고 할 경우에는 맛있는 간식에 숨겨서 약을 먹게끔 합니다
						<br />
						</td>
					</tr>

				</table>


			</form>

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