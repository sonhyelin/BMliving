<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page
	import="com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao, com.puppyfood101.javaweb.dao.MemberDao, com.puppyfood101.javaweb.entity.MyPageView"%>
<%
	MemberDao dao = new JdbcMemberDao();
	String id = (String) session.getAttribute("id");
	MyPageView vo = dao.selectMember(id);
	if (id == null)
		out.write(
				"<script>alert('로그인이 필요합니다.');location.href='../member/login?returnURL=../menu/cm-recocm';</script>");
%>
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
	<jsp:include page="inc/visual-cm.jsp" />


	<div id="body">
		<div class="content-container">
			<main id="main">
			<div style="margin-left: 1%;">
				<label class="title-cm">*<%=vo.getMemberName()%>${m.name}회원님의 반려견 기본 정보입니다.</label> <a
					href="${path}/customer/member/mypage-edit"
					class="btn2 edit-button2" style=" margin-left: 82%;">수정</a>
				<table class="table-basic-cm">
					<tr>
						<th>성별</th>
						<td><%=vo.getSex()%>${p.sex}</td>
						<th>출생년도</th>
						<td><%=vo.getBirthYear()%>${p.birthYear}</td>
					</tr>
					<tr>
						<th>견종</th>
						<td><%=vo.getKind()%>${p.kind}</td>
						<th>사이즈</th>
						<td><%=vo.getSize()%>${p.Size}</td>
					</tr>
				</table>
			</div>

			<div>
				<label class="title-cm">*<%=vo.getMemberName()%>${m.name}회원님의 반려견의 기본 추천 사료입니다.</label>
			</div>

			<div class="wrap-basic" style="margin-left: 5%;">
				<div class="tile-basic">
					<img src="../../images/f-49.PNG" />
					<div class="text"></div>
				</div>
				<div class="tile-basic">
					<img src="../../images/f-50.PNG" />
					<div class="text"></div>
				</div>
				<div class="tile-basic">
					<img src="../../images/f-51.PNG" />
					<div class="text"></div>
				</div>
			</div>
			<br />
			<br />
			<br />
			<br />
			<br />
			<div class="cmbox" >
			<!-- <div style="margin-left: 40%;">
				<label class="q-text">강아지가 앓고 있는 질병이 있나요?</label>
				<form style="margin-left: 5%;">
					<a class="btn2 yes-button2">예</a> <a class="btn2 no-button2"  >아니오</a>
				</form>
				</div> -->
				<br />
				<form method="post">
					<table class="table-basic-cm">

					
					<tr>
							<th><label class="q-text">심장 질환</label></th>
							<td colspan="3">
								<div class="cm-check">
									<input type="checkbox" name="check1" /> <label
										class="cm-check2">선천성</label> <input type="checkbox"
										name="check1" /> <label class="cm-check2">이첨판 폐쇄부전증</label> <input
										type="checkbox" name="check1" /> <label class="cm-check2">삼첨판
										폐쇄부전증</label> <input type="checkbox" name="check1" /> <label
										class="cm-check2">기타</label> <input type="checkbox"
										name="check1" /> <label class="cm-check2">없음</label>
								</div>
							</td>
						</tr>
						<tr>
							<th> <label class="q-text">관절 질환</label></th>
							<td colspan="3">	<div class="cm-check">
						<input type="checkbox" name="check2" /> <label class="cm-check2">레그페르테스병</label>
						<input type="checkbox" name="check2" /> <label class="cm-check2">고관절형성부전</label>
						<input type="checkbox" name="check2" /> <label class="cm-check2">탈구</label>
						<input type="checkbox" name="check2" /> <label class="cm-check2">허리디스크</label>
						<input type="checkbox" name="check2" /> <label class="cm-check2">인대손상</label>
						
						<input type="checkbox" name="check2" /> <label class="cm-check2">기타</label>
						<input type="checkbox" name="check2" /> <label class="cm-check2">없음</label>
					</div></td>
						</tr>
						<tr>
							<th><label class="q-text">피부 질환</label></th>
							<td colspan="3">	<div class="cm-check">
						<input type="checkbox" name="check3" /> <label class="cm-check2">아토피</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">탈모</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">습진</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">각질</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">곰팡이균</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">농피증피부염</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">기타</label>
						<input type="checkbox" name="check3" /> <label class="cm-check2">없음</label>
					</div></td>
						</tr>
						<tr>
							<th><label class="q-text">알레르기</label></th>
							<td colspan="3">	<div class="cm-check">
						<input type="checkbox" name="check4" /> <label class="cm-check2">쌀</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">콩</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">생선</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">유제품</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">쇠고기</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">첨가물</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">기타</label>
						<input type="checkbox" name="check4" /> <label class="cm-check2">없음</label>
					</div></td>
						</tr>
						<tr>
							<th><label class="q-text">귓병</label></th>
							<td colspan="3">
					<div class="cm-check">
						<input type="checkbox" name="check5" /> <label class="cm-check2">중이염</label>
						<input type="checkbox" name="check5" /> <label class="cm-check2">외이염</label>
						<input type="checkbox" name="check5" /> <label class="cm-check2">귀
							곰팡이</label> <input type="checkbox" name="check5" /> <label
							class="cm-check2">귀 진드기</label> <input type="checkbox"
							name="check5" /> <label class="cm-check2">이개혈종</label> <input
							type="checkbox" name="check5" /> <label class="cm-check2">기타</label>
						<input type="checkbox" name="check5" /> <label class="cm-check2">없음</label>
					</div></td>
						</tr>
						<tr>
							<th><label class="q-text">소화 불량</label></th>
							<td colspan="3">	<div class="cm-check">
						<input type="checkbox" name="check6" /> <label class="cm-check2">일주일에
							1번</label> <input type="checkbox" name="check6" /> <label
							class="cm-check2">일주일에 2~3번</label> <input type="checkbox"
							name="check6" /> <label class="cm-check2">일주일에 4번 이상</label> <input
							type="checkbox" name="check6" /> <label class="cm-check2">없음</label>
					</div></td>
						</tr>
							<tr>
							<th><label class="q-text">기타 질병</label></th>
							<td colspan="3">	<div class="cm-check">
						      <input type="text" name="check15" style="margin-left: -160px; height: 20px; margin-top: -5px;"/> <label class="cm-check2"></label> 
						      <input style="border: 0px; padding: 5px 5px; background: transparent; background-color: #ebecf3;"
										type="button" name="check15" value="검색" /> 
										<input	type="checkbox" name="check15" style="margin-left: 60px;" /> <label class="cm-check2">없음</label>
					</div></td>
						</tr>
							<tr>
							<th colspan="2" style="border-right-style: 1px;"><label
								class="q-text">위장 개선</label></th>
							<th colspan="2"><label class="q-text">수술 경험</label></th>

						</tr>
						<tr>

							<td colspan="2">
								<div class="cm-check">
									<input type="checkbox" name="check7" /> <label
										class="cm-check2">있음</label> <input type="checkbox"
										name="check7" /> <label class="cm-check2">없음</label>
								</div>
							</td>

							<td colspan="2">
								<div class="cm-check">
									<input type="checkbox" name="check9" /> <label
										class="cm-check2">O</label> <input type="checkbox"
										name="check9" /> <label class="cm-check2">X</label>
								</div>
							</td>
						</tr>
							<tr>
							<th colspan="2" style="border-right-style: 1px;"><label
								class="q-text">출산 직후</label></th>
							<th colspan="2"><label class="q-text">임신 여부</label></th>

						</tr>
						<tr>

							<td colspan="2">
								<div class="cm-check">
									<input type="checkbox" name="check8" /> <label
										class="cm-check2">있음</label> <input type="checkbox"
										name="check8" /> <label class="cm-check2">없음</label>
								</div>
							</td>

							<td colspan="2">
								<div class="cm-check">
									<input type="checkbox" name="check10" /> <label
										class="cm-check2">O</label> <input type="checkbox"
										name="check10" /> <label class="cm-check2">X</label>
								</div>
							</td>
						</tr>

						<tr>
								<th colspan="2"><label class="q-text">다이어트</label> <br /></th>
								<th colspan="2"><label class="q-text">비만 여부</label> <br /></th>

						</tr>
						<tr>

							<td colspan="2">
								<div class="cm-check">
									<input type="checkbox" name="check12" /> <label
										class="cm-check2">O</label> <input type="checkbox"
										name="check12" /> <label class="cm-check2">X</label>
								</div>
							</td>
							<td colspan="2">
								<div class="cm-check">
									<input type="checkbox" name="check13" /> <label
										class="cm-check2">O</label> <input type="checkbox"
										name="check13" /> <label class="cm-check2">X</label>
								</div>
							</td>
						</tr>
						
						
						<tr>
								<th colspan="2"> <label class="q-text">유기농 원료</label> <br /></th>
							    <th colspan="2"><label class="q-text">동물성 원료 제외</label> <br /></th>

						</tr>
						<tr>

							<td colspan="2">
								<div class="cm-check">
						<input type="checkbox" name="check14" /> <label class="cm-check2">O</label>
						<input type="checkbox" name="check14" /> <label class="cm-check2">X</label>
					</div>
							</td>
							<td colspan="2">
								
								<div class="cm-check">
									<input type="checkbox" name="check11" /> <label
										class="cm-check2">O</label> <input type="checkbox"
										name="check11" /> <label class="cm-check2">X</label>
								</div>
							</td>
						</tr>
						
					</table>
			
					<c:if test="${not empty param.error}">
						<!-- 체크가 안되어있을때만 뜨는 화면창 -->
						<div style="color: red">
							모든 내용에 체크를 하셔야 합니다.<br> <br>
						</div>
					</c:if>
					<input type="submit" value="다음" class="btn2 yes-button2"
						style="border: 0px; margin-left: 42%; width: 200px; height: 50px;">
				</form>
			</div>
			</main>


			<!-- aside  부분 -->
			<jsp:include page="../../../views/customer/menu/inc/aside-cm.jsp"></jsp:include>


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

	<script type="text/javascript">
		$(document).ready(function() {
			//전체 선택/해제
			$("#check-all").click(function() {
				var chk = $(this).is(":checked");
				if (chk) {
					$('input[name*="check"]').prop('checked', true);
				} else {
					$('input[name*="check"]').prop('checked', false);
				}
			});

			//체크 항목 확인
			$("#check").click(function() {
				$('input[name*="check"]').each(function(i) {
					if ($(this).is(":checked")) {
						alert($(this).val());
					}
				});
			});
		});
	</script>

</body>
</html>