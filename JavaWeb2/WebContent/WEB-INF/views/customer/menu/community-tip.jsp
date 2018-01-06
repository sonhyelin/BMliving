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
	<jsp:include page="inc/visual-community.jsp" />


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
				<br>
				<br>
			</div>

			<table class="table-garo2">
				<thread>
				<tr>
					<th class="num">번호</th>
					<th colspan="3" class="title">제목</th>
					<th class="writer">작성자</th>
					<th class="date">작성일</th>
					<th class="hit">조회수</th>
				</tr>
				</thread>
				<tbody>
					<tr>
						<td>4</td>
						<td colspan="3" class="left"><a href="tip1">애완견 관련 팁 3가지</a></td>
						<td>관리자</td>
						<td>2017-09-13</td>
						<td>10</td>
					</tr>
					<tr>
						<td>3</td>
						<td colspan="3" class="left"><a href="../menu/tip2">애완견이 감기에 걸렸을 경우</a></td>
						<td>관리자</td>
						<td>2017-09-13</td>
						<td>5</td>
					</tr>
					<tr>
						<td>2</td>
						<td colspan="3" class="left"><a href="../menu/tip3">애완견 목욕 꿀팁</a></td>
						<td>관리자</td>
						<td>2017-09-13</td>
						<td>9</td>
					</tr>
					<tr>
						<td>1</td>
						<td colspan="3" class="left"><a href="../menu/tip4">좋은 사료를 고르는 꿀팁</a></td>
						<td>관리자</td>
						<td>2017-09-13</td>
						<td>3</td>
					</tr>
				</tbody>
			</table>
	
		</main>

   <!-- aside  부분 -->
 <jsp:include page="../../../views/customer/board/inc/aside-community.jsp"></jsp:include>

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