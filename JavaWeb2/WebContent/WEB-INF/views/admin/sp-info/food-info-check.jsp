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
				<li>사료정보</li>
				<li>></li>
				<li>상품정보조회</li>
			</ul>
			<br />

			<div id="underbar">
				<br>
				<br>
			</div>

         <a class="btn1 btn-community3" href="newfood-info-reg">등록</a> 

			<table class="table-garo2">
				<thread>
				<tr>
					<th class="num">번호</th>
					<th colspan="4" class="title">사료명</th>
					<th class="writer col3">제조사</th>
					<th class="date col3">원재료</th>
					<th class="hit">정보등록일</th>
				</tr>
				</thread>
				<tbody>
					<tr>
						<td>15</td>
						<td colspan="4" class="left"><a href="tip1">데이스포 제스트 오리와 연어 5kg</a></td>
						<td>(주)리더스펫푸드</td>
						<td>오리고기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>14</td>
						<td colspan="4" class="left"><a href="tip1">굿프랜드 스페셜서퍼 닭고기 285g</a></td>
						<td>(주)굿프랜드</td>
						<td>닭고기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>13</td>
						<td colspan="4" class="left"><a href="tip1">네이쳐스기프트 소고기&보리 야채 380g</a></td>
						<td>(주)퍼피웍스</td>
						<td>호주산 소고기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>12</td>
						<td colspan="4" class="left"><a href="tip1">시저 혼합야채를 곁들인 칠면조와 쌀 7세이상 캔 100g</a></td>
						<td>한국마즈(유)</td>
						<td>칠면조</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>11</td>
						<td colspan="4" class="left"><a href="tip1">시저 쇠고기와 치즈 캔 100g</a></td>
						<td>한국마즈(유)</td>
						<td>쇠고기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>10</td>
						<td colspan="4" class="left"><a href="tip1">더독 닥터소프트 연어와 감자 3kg</a></td>
						<td>BW코리아</td>
						<td>연어(생육)</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>9</td>
						<td colspan="4" class="left"><a href="tip1">네츄럴코어 소프트델리2 연어 800g</a></td>
						<td>(주)이레본</td>
						<td>연어</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>8</td>
						<td colspan="4" class="left"><a href="tip1">뉴트리나 건강백서 말티즈 2kg</a></td>
						<td>(주)카길애그리퓨리나</td>
						<td>가수분해 연어</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>7</td>
						<td colspan="4" class="left"><a href="tip1">네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</a></td>
						<td>(주)이레본</td>
						<td>오리 살코기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>6</td>
						<td colspan="4" class="left"><a href="tip1">네츄럴코어 유기농 에코 6 센시티브 솔루션 연어 중간알갱이 6kg</a></td>
						<td>(주)이레본</td>
						<td>연어순살코기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>5</td>
						<td colspan="4" class="left"><a href="tip1">로얄캐닌 미니 인도어 주니어 1.5kg</a></td>
						<td>로얄캐닌</td>
						<td>쌀</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>4</td>
						<td colspan="4" class="left"><a href="tip1">ANF 프리미엄 램28 양고기 7.5kg</a></td>
						<td>(주)대산물산</td>
						<td>밀</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>3</td>
						<td colspan="4" class="left"><a href="tip1">now 그레인프리 어덜트 작은알갱이 2.72kg</a></td>
						<td>(주)이글벳</td>
						<td>칠면조</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>2</td>
						<td colspan="4" class="left"><a href="tip1">네츄럴코어 유기농 에코 2 오리고기 작은알갱이 2kg</a></td>
						<td>(주)이레본</td>
						<td>오리고기</td>
						<td>2017-09-14</td>
					</tr>
					<tr>
						<td>1</td>
						<td colspan="4" class="left"><a href="tip1">네츄럴코어 홀리스틱 베네 M32 멀티프로테인 7.2kg</a></td>
						<td>(주)이레본</td>
						<td>오리 살코기</td>
						<td>2017-09-14</td>
					</tr>
				</tbody>
			</table>
				<div class="listnum">
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
					<li>5</li>
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