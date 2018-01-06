<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao, com.puppyfood101.javaweb.dao.MemberDao, com.puppyfood101.javaweb.entity.MyPageView"%>
<%
	MemberDao dao = new JdbcMemberDao();
	String id = (String) session.getAttribute("id");
	MyPageView vo = dao.selectMember(id);
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
				<label class="boradlabel"> 마이 페이지</label>
			</div>
			<!-- 본문 타이틀 -->
			<ul class="location" style="padding-left: 5px;">
				<!-- 로케이션 -->
				<li>HOME</li>
				<li>></li>
				<li>마이 페이지</li>
				<li>></li>
				<li>정보조회</li>
			</ul>
			</br>
			<div id="underbar"></div>
			<br />
			<br />
			<div class="mypagement"
				style="padding-left: 30px; margin-top: -20px;">
				*<%=vo.getMemberName()%>${m.name}회원님의 정보 입니다.
			</div>
			<div>
				<div id="img-table">



					<img src="${path}/images/coco1.png" alt="강아지 사진" width="300px;"
						style="padding-left: 400px; padding-top: 35px;" /> <br /> <br />
				</div>
				<a href="mypage-edit" class="btn1"
					style="margin-top: 320px; margin-left: 970px;">수정</a>
				<table class="table-garo-mypage" style="margin-left: 80px;">

					<tr>
						<th>회원 아이디</th>
						<td><%=vo.getId()%>${m.id}</td>
						<th>반려견 이름</th>
						<td><%=vo.getPuppyName()%>${p.name}</td>
					</tr>
					<tr>
						<th>반려견 출생년도</th>
						<td><%=vo.getBirthYear()%>${p.birthYear}</td>
						<th>반려견 성별</th>
						<td><%=vo.getSex()%>${p.sex}</td>
					</tr>
					<tr>
						<th>반려견 사이즈</th>
						<td><%=vo.getSize()%>${p.size}</td>
						<th>반려견 종타입</th>
						<td><%=vo.getKind()%>${p.kind}</td>
					</tr>
				</table>

			</div>
			<div>

				<br /> <br /> <label class="title"
					style="font-size: 20px; padding-left: 30px;">*나의 후기 목록</label>
				<nav id="table-3">
					<table class="table-garo-mypage">
						<thread>
						<tr>
							<th class="num">번호</th>
							<th class="date">날짜</th>
							<th class="date">사료이름</th>
							<th class="content text-left">입력내용</th>
						</tr>
						</thread>
						<tbody>
							<tr>
								<td>3</td>
								<td width=400px>2017-09-14</td>
								<td>네추럴 코어 스윗 허니 치즈</td>
								<td class="text-left"> 맞춤 추천에 나온대로 샀는데 저희집 강아지가 잘먹어요~</td>
							</tr>
							<tr>
								<td>2</td>
								<td width=400px>2017-09-10</td>
								<td>로얄 캐닌 허브 잇</td>
								<td class="text-left">알갱이가 너무 커서 큰 강아지들이 먹어야할 것 같아요.</td>
							</tr>
							<tr>
								<td>1</td>
								<td width=400px>2017-08-24</td>
								<td>자연나라 그린 건강 푸드</td>
								<td class="text-left">피부병있는 강아지들은 조심해야 할 것 같아요...</td>
							</tr>
						</tbody>
					</table>
				</nav>

			</div>
			</main>


			<!-- aside  부분 -->
			<jsp:include
				page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>

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