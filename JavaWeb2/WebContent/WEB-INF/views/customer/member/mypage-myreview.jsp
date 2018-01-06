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
				<label class="boradlabel"> 나의 후기</label>
			</div>
			<!-- 본문 타이틀 -->
			<ul class="location">
				<!-- 로케이션 -->
				<li class="first">마이페이지</li>
				<li>></li>
				<li>나의후기</li>
				<li>></li>
				<li>후기조회</li>
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
						<td>5</td>
						<td colspan="3" class="left"><a href="review1">나나한테 딱이에요 bb</a></td>
						<td>박나래</td>
						<td>2017-09-14</td>
						<td>5</td>
					</tr>
					<tr>
						<td>4</td>
						<td colspan="3" class="left"><a href="review2">ㅜㅜ눈물나게좋아요 굿초이스!</a></td>
						<td>박나래</td>
						<td>2017-08-13</td>
						<td>20</td>
					</tr>
					<tr>
						<td>3</td>
						<td colspan="3" class="left"><a href="review3">이거 먹고 배탈났어요...</a></td>
						<td>박나래</td>
						<td>2017-08-01</td>
						<td>9</td>
					</tr>
					<tr>
						<td>2</td>
						<td colspan="3" class="left"><a href="review4">피부병 있는 강아지에게 딱!!</a></td>
						<td>박나래</td>
						<td>2017-07-11</td>
						<td>9</td>
					</tr>
						<tr>
						<td>1</td>
						<td colspan="3" class="left"><a href="review4">세번째 구입!!</a></td>
						<td>박나래</td>
						<td>2017-06-21</td>
						<td>14</td>
					</tr>
				</tbody>
			</table>
	
		</main>

		<!-- aside  부분 -->
		<jsp:include page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
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