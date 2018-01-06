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
						<td colspan="3">좋은 사료를 고르는 꿀팁</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td colspan="3">2017-09-14</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>관리자</td>
						<th>조회수</th>
						<td>3</td>
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr>
						<td class="editcontent" colspan="4">
						<img src="${path}/images/tip4.png" style="margin-left: 250px;"/> <br />
						<br />
						<br />
						-좋은 사료를 고르는 꿀팁<br />
						아래의 순서대로 따라하셔서 좋은 사료를 고르세요:)
						<br />
						<br />
						1. 포장지의 '등록성분' 이라는 성분 분석표를 보면 영양소비율(구성)을 알수 있습니다.<br />
						2. 주원료, 성분량, 식품첨가물 등을 보시면 주로 많은 비중을 차지하는 성분이 앞쪽으로 나열되고,<br />
						적은 비중의 성분이 뒤에 나열되는 경우가 대부분입니다. 여기서 육류 합유량은 적고 부산물이나 첨가물이 많이 함유된 사료는
						좋지 않은 사료입니다!<br />
						*주원료 : 닭고기, 오리고기 감자 등 과 같은 성분<br />
						*첨가물 : 토코페롤, 향료 등과 같은 성분<br />
						3. 성분표에 끝나는 말이 '~등' 으로 끝나는 사료는 피하는 게 좋습니다<br />
						성분이 명확히 적혀있지 않은 사료는 어떤 성분이 들어있는지 모르기도 하고, 불분명한 성분이 들어갔을 가능성이 클 수 있습니다.
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