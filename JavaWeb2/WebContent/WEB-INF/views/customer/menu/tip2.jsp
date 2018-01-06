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
						<td colspan="3">애완견이 감기에 걸렸을 경우</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td colspan="3">2017-09-14</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>관리자</td>
						<th>조회수</th>
						<td>5</td>
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr>
						<td class="editcontent" colspan="4">
						<img src="${path}/images/tip2.jpg" style="margin-left: 250px;"/> <br />
						<br />
						<br />
						-애완견이 감기에 걸렸을 경우 증상과 대처법
						<br />
						감기의 증상에는 대표적으로 활동량과 식욕이 떨어지며, 몸에 열이나며 주인의 품에 파고드는 경우가 많습니다.
						<br />
						또, 애완견의 코가 평소보다 촉촉하고 재채기를 할 경우 감기에 걸렸을 확률이 높습니다.
						<br />
						<br />
						대처법으로는 체온유지를 신경써줘야 하는데 특히, 아랫배쪽에 장기가 몰려있어 따듯하게 유지시켜줘야 합니다.
						<br />
						증상이 심해질 경우에는 가까운 병원에서 진료를 받는것이 좋습니다.
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