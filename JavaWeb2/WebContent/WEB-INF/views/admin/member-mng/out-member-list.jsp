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



	<div id="body">
		<div class="content-container">
			<main id="main">
			<div id="main-font">
				<img src="${path}/images/bg-board.png" height="45px" width="45px" />
				<label class="boradlabel"> 관리자페이지</label>
			</div>
			<!-- 본문 타이틀 -->
			<ul class="location">
				<!-- 로케이션 -->
				<li class="first">HOME</li>
				<li>></li>
				<li>회원관리</li>
				<li>></li>
				<li>탈퇴회원목록</li>
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
					<th class="title">아이디</th>
					<th class="pwd">비밀번호</th>
					<th class="writer">회원명</th>
					<th class="date col3">탈퇴신청날짜</th>
					<th class="hit col3">탈퇴승인여부</th>
				</tr>
				</thread>
				<tbody>

					<tr>
						<td>7</td>
						<td class="left"><a href="tip1">lovelyah918</a></td>
						<td>eee1230tt1230</td>
						<td>김아현</td>
						<td>2017-09-14</td>
						<td>N</td>
					</tr>
					<tr>
						<td>6</td>
						<td class="left"><a href="tip1">hihi11</a></td>
						<td>1230</td>
						<td>이안녕</td>
						<td>2017-09-14</td>
						<td>Y</td>
					</tr>
					<tr>
						<td>5</td>
						<td class="left"><a href="tip1">hyori79</a></td>
						<td>dd12301230</td>
						<td>이효리</td>
						<td>2017-09-14</td>
						<td>Y</td>
					</tr>
					<tr>
						<td>4</td>
						<td class="left"><a href="tip1">moosifer</a></td>
						<td>kd3013kk30</td>
						<td>전현무</td>
						<td>2017-09-14</td>
						<td>N</td>
					</tr>
					<tr>
						<td>3</td>
						<td class="left"><a href="../menu/tip2">100jiwon</a></td>
						<td>mm12301230</td>
						<td>백지원</td>
						<td>2017-09-14</td>
						<td>Y</td>
					</tr>
					<tr>
						<td>2</td>
						<td class="left"><a href="../menu/tip3">sangsoon44</a></td>
						<td>32301230id</td>
						<td>이상순</td>
						<td>2017-09-14</td>
						<td>Y</td>
					</tr>
					<tr>
						<td>1</td>
						<td class="left"><a href="../menu/tip4">naraebar</a></td>
						<td>nr12301230</td>
						<td>박나래</td>
						<td>2017-09-14</td>
						<td>Y</td>
					</tr>
				</tbody>
			</table>
				<div class="listnum">
				<ul>
					<li>1</li>
					<li>2</li>
				</ul>
			</div>
		</main>

   <!-- aside  부분 -->
 <jsp:include page="../../admin/inc/aside.jsp"></jsp:include>

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