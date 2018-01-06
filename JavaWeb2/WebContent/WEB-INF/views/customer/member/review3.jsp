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
				<br> <br>
			</div>
			<form>
				<table class="table-garo2">
					<tr>
						<th>제목</th>
						<td colspan="3">이거 먹고 배탈났어요...</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td colspan="3">2017-08-01</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>박나래</td>
						<th>조회수</th>
						<td>9</td>
					</tr>
					<tr>
						<th>사료명</th>
						<td colspan="3">피엔피 완두콩&소고기</td>
					</tr>
					<tr>
						<th colspan="4">내용</th>
					</tr>
					<tr>
						<td class="editcontent" colspan="4">
						<br />
						<br />
						<br />
						재료가 좋아보여서 샀는데 저희 나나한테는 잘 안맞는 거같아요..<br />
						먹고 피부가 안좋아졌어요ㅜㅜ
						
						<br />
						</td>
					</tr>

				</table>


			</form>

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