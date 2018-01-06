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
				<li>후기관리</li>
				<li>></li>
				<li>경고 메시지</li>
			</ul>
			<br />

			<div id="underbar">
				<br> <br>
			</div>
			<form>
				<table class="table-garo2">
					<tr>
						<th>제목</th>
						<td colspan="3">악성 후기에 따른 제제조치를 취할 예정 안내입니다 </td>
					</tr>
					<tr>
						<th>작성일</th>
						<td colspan="3">2017-09-14</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>lovelyah918</td>
						<th>신고사유</th>
						<td>욕설 및 비방</td>
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr>
						<td class="editcontent" colspan="4">
						PUPPYFOOD101 자유게시판 내에서 '꼬우면 니가 만들던가' 라는 내용을 게시하여 다수의 회원들에게 불쾌감을 주었습니다.<br />
						이에 PUPPYFOOD101은 해당 게시글을 작성한 아이디 'lovelyah918' 회원에게 2017-09-15 부터
						2017-09-18, 3일간 커뮤니티의 자유게시판<br />
						글 작성 정지 조치를 취하겠습니다.<br />
						</td>
					</tr>

				</table>

				<div class="detailbutton">
					<ul>
						<li><a href="list" class="btn1">전송</a></li>
						<li><a href="del" class="btn1">취소</a></li>
					</ul>
				</div>
			</form>

			</main>

  <!-- aside  부분 -->
				<jsp:include page="../../../views/admin/inc/aside.jsp"></jsp:include>


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