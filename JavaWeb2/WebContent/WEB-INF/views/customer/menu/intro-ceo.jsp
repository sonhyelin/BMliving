<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bm</title>
<link href="${path}/css/intro-style.css" type="text/css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/eqcss/1.5.1/EQCSS-polyfills.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/eqcss/1.5.1/EQCSS.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<style id="data-eqcss-0-0" data-eqcss-read="true">
header {
	position: fixed;
	top: 0;
	background: white;
	box-shadow: rgba(0, 0, 0, .05) 0 3px 15px;
}
</style>
</head>

<body>
	<section>
		<%-- <video autoplay loop poster="${path}WebContent/images/main-bg-9.jpg">
	      <source src="${path}/images/mirror.mp4" type="video/mp4">
	   </video> --%>
		<span>회사 소개</span>
	</section>
	<header>
		<h1>BM LIVING KOREA</h1>
		<a href="../home/main"></a>
		<nav>
			<a href="../menu/intro-ceo">회사 소개</a> 
			<a href="../menu/product-mir">제품 소개</a> 
			<a href="../menu/tech-tech">기술 및 특허</a>
			<a href="../board/board-qna">문의 게시판</a>
		</nav>
	</header>
	<article>
		<h1>CEO 인사말</h1>
		<p>기술개발을 통한 제품 생산을 통해 고객이 만족할 수 있는 품질을 구현하는 기업이 되겠습니다.</p>
		<p>지속적인 투자와 기술개발을 통해 ~~~에 있어 ~~기술과 특허를 보유하고 있으며, 특히
		거울과 유리 부문에서는 독자적인 영역을 구축해 나가고 있습니다.</p>
		<p>현재는 ~~~에 주력하고 있으며, 앞으로 ~~~ 에 있어서 독자적인 기술을 보유한 회사로
		성장해 나갈 것이며 축적된 경험과 기술 노하우를 더욱 발전시켜 고객을 위한
		제품과 지속적인 서비스를 추구할 것입니다.</p>
		<p>앞으로도 발전하여 사원들이 만족하며 즐겁게 일할 수 있는 기업으로 성장해 나갈 것입니다.</p>
		<p align="right">BM LIVING KOREA CEO 김김김</p>

	</article>
	
	<article>
		<h1>회사 소개</h1>
		<p>Harmony / Creativity / Challenge</p>
		<p>사훈에 맞춤</p>
		
	</article>
	
	<article>
		<h1>연혁</h1>
		<link href='//fonts.googleapis.com/css?family=Roboto:200,400,600'
			rel='stylesheet' type='text/css'>
		<div class="history-tl-container">
			<ul class="tl">
				<li class="tl-item" ng-repeat="item in retailer_history">
					<div class="timestamp">
						2017<br> 05.10
					</div>
					<div class="item-title">ㅇㅇ 기술 개발</div>
					<div class="item-detail">유리관련 기술 개발</div>
				</li>
				<li class="tl-item" ng-repeat="item in retailer_history">
					<div class="timestamp">
						2017<br> 03.06
					</div>
					<div class="item-title">ㅇㅇ 특허 취득</div>
					<div class="item-detail">ㅇㅇ 기술 관련 특허 취득</div>
				</li>
				<li class="tl-item" ng-repeat="item in retailer_history">
					<div class="timestamp">
						2010<br> 11.15
					</div>
					<div class="item-title">ㅇㅇ 기술 개발</div>
					<div class="item-detail">ㅇㅇ 분야 관련 기술 개발</div>
				</li>
				<li class="tl-item" ng-repeat="item in retailer_history">
					<div class="timestamp">
						2005<br> 09.23
					</div>
					<div class="item-title">ㅇㅇ 사업부 개설</div>
					<div class="item-detail">ㅇㅇ 관련 사업 시작</div>
				</li>
			</ul>

		</div>
	</article>
	
	<script>
	$(document).ready(function() {

	     $('.about_nav_content li:first-child a').click(function(){
	   	$('#historic_event_1').addClass('current');
	   	$('#historic_event_2').removeClass('current');
	   	$('#historic_event_3').removeClass('current');
	   	$('#historic_event_4').removeClass('current');
	   	$('#history_clock').removeClass('animate1 animate2 animate3');
	   	});
	   	
	   	var hoverOrClick = function(){
	   		$("#history_clock").removeClass('animate1 animate2 animate3');
	   		$('#historic_event_1').addClass('current');
	   		$('#historic_event_2, #historic_event_3, #historic_event_4').removeClass('current');
	   	}
	   	$('#historic_dot_1, #historic_event_1').click(hoverOrClick).hover(hoverOrClick);
	   	
	   	var hoverOrClick = function(){
	    	$('#history_clock').addClass('animate1');
	    	$("#history_clock").removeClass('animate2 animate3');
	    	$('#historic_event_2').addClass('current');
	    	$('#historic_event_1, #historic_event_3, #historic_event_4').removeClass('current');
	   	}
	   	$('#historic_dot_2, #historic_event_2').click(hoverOrClick).hover(hoverOrClick);
	   	
	   	var hoverOrClick = function(){
	   		$('#history_clock').addClass('animate2');
	   		$("#history_clock").removeClass('animate1 animate3');
	   		$('#historic_event_3').addClass('current');
	   		$('#historic_event_1, #historic_event_2, #historic_event_4').removeClass('current');
	   	}
	   	$('#historic_dot_3, #historic_event_3').click(hoverOrClick).hover(hoverOrClick);
	   	
	   	var hoverOrClick = function(){
	   		$('#history_clock').addClass('animate3');
	   		$("#history_clock").removeClass('animate1 animate2');
	   		$('#historic_event_4').addClass('current');
	   		$('#historic_event_1, #historic_event_2, #historic_event_3').removeClass('current');
	   	}
	   	$('#historic_dot_4, #historic_event_4').click(hoverOrClick).hover(hoverOrClick);

	});
	</script>
	
</body>


</html>