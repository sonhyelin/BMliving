<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>


<link href="${path}/css/style-newmember-agree.css" type="text/css"
	rel="stylesheet" />
</head>
<body>

	<div class="wrapper">
		<div class="main">
	
			<div class="login_box" style="text-align: center;">
				<h1 class="hidden">PUPPYFOOD101 회원가입</h1>
				<form method="post" id="form1">
					<h2 class="hidden">약관선택</h2>
					<p>
					<div class="logo">
						<img src="../../images/logo.png" alt="" /><br>
					</div>
					<h3
						style="line-height: 300%; text-align: center; font-size: 17px; font-weight: bold;">PUPPYFOOD101
						서비스 약관 동의</h3>
					<div style="text-align: left;">
						<div class="colbox">
							<div style="font-weight: bold;">
								제 1 장 총 칙<br />
							</div>
							1. 서비스 이용약관<br />
							<div style="font-weight: bold;">
								제 1 조 목 적<br />
							</div>
							<div>
								본 약관은 서비스 이용자가 PUPPYFOOD101(이하 “회사”라 합니다)가 제공하는 온라인상의 인터넷 서비스(이하
								“서비스”라고 하며, 접속 가능한 유∙무선 단말기의 종류와는 상관없이 이용 가능한 “회사”가 제공하는 모든
								“서비스”를 의미합니다. 이하 같습니다)에 회원으로 가입하고 이를 이용함에 있어 회사와 회원(본 약관에 동의하고
								회원등록을 완료한 서비스 이용자를 말합니다. 이하 “회원”이라고 합니다)의 권리•의무 및 책임사항을 규정함을
								목적으로 합니다.<br /> 1. 서비스 이용약관<br /> 1. 서비스 이용약관<br /> 1. 서비스
								이용약관<br /> 1. 서비스 이용약관<br /> 1. 서비스 이용약관<br />
							</div>
						</div>
						<div id="a1">
							<label style="line-height: 300%;">
							 <input type="checkbox"  name ="agree1" value="ok"/>이용약관에 동의합니다
							</label>
						</div>
				
						<p>
						<h3
							style="line-height: 300%; font-size: 17px; font-weight: bold; text-align: center;">PUPPYFOOD101
							개인정보 수집 및 이용 동의</h3>
						<div class="colbox">
							PUPPYFOOD101은 아래의 목적으로 개인정보를 수집 및 이용하며, 회원의 개인정보를 안전하게 취급하는데 최선을
							다합니다.<br /> 1. 수집목적<br /> • 이용자 식별, 원활한 의사소통, 부정이용 시 제재 및 기록<br />
							• 회원제 서비스 제공, 문의사항 또는 불만 처리, 공지사항 전달<br /> • 신규 서비스 개발, 이벤트 행사 시
							정보 전달, 마케팅 및 광고 등에 활용<br /> • 서비스 이용 기록 및 통계 분석을 통한 서비스 개선 및 맞춤형
							서비스 제공 <br /> 2. 수집항목<br /> (필수) 아이디, 비밀번호, 이름, 연락처(휴대폰번호 또는
							이메일 주소 중 1개 선택)<br /> 3. 보유기간<br /> 수집된 정보는 회원탈퇴 후 지체없이 파기됩니다.<br />
							2. 개인정보 수집 및 이용에 대한 안내<br /> 2. 개인정보 수집 및 이용에 대한 안내<br /> 2.
							개인정보 수집 및 이용에 대한 안내<br /> 2. 개인정보 수집 및 이용에 대한 안내<br />
						</div>
					</div>
					<div id="a2">
						<label style="line-height: 300%;">  
						<input type="checkbox"  name ="agree2" value="ok"/> 개인정보 수집 및 이용에 동의합니다.
						</label>
					</div>
				
					<c:if test="${not empty param.error}">
						<!-- 체크가 안되어있을때만 뜨는 화면창 -->
						<div style="color: red">모든 내용에 동의를 하셔야 합니다.<br><br></div>
					</c:if>
					<p>
					<div id="aa" style="line-height: 300%; padding-left: 130px;">
						<button  type="button" value="이전" onclick="location.href='login'" style=" width:100px; font-weight: bold; color: #6c6c6c;  padding: 10px 10px;  border: 2px solid #d9d9d9;background: transparent;  background-color: #f1f1f1; margin-left: -140px; margin-top: 20px;">이전</button>
						<button  type="submit" value="다음" style=" width:100px; font-weight: bold; color: #6c6c6c;  padding: 10px 10px;  border: 2px solid #d9d9d9;background: transparent;  background-color: #f1f1f1;">다음</button>

				</div>
					<br> <br> 
					<h2 class="hidden">참고문서</h2>
					<ul style="text-align: center;">
						<li><a href="#">퍼피푸드101 이용약관 동의</a></li>
						<li><a href="#">개인정보 수집 및 이용에 대한 안내</a></li>
					</ul>
				</form>
				<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
				<br />
			</div>
		</div>
	</div>
</body>
</html>