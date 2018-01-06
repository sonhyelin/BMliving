<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-admin.css" type="text/css"
   rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

 <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['PuppyFood', 'percent'],
          ['네츄럴코어 소프트델리2 연어', 10],
          ['네츄럴코어 소프트델리5 오리고기 피부와 면역 ', 20],
          ['제니스독 양고기&쌀 작은알갱이 ', 20],
          ['지위픽 독 에어드라이 소고기 ', 15],
          ['한줌의사료 스킨&코트', 30]
        ]);

        var options = {
          title: '사료 순위 - 피부병'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart1'));

        chart.draw(data, options);
      }
    </script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['PuppyFood', 'percent'],
          ['더독 닥터소프트 식이섬유 노령견용 ', 30],
          ['캐니대 플래티넘 다이어트 ', 25],
          ['지위픽 독 에어드라이 양고기', 10],
          ['지위픽 독 에어드라이 고등어&양고기 ', 15],
          ['퓨리나 프로플랜 옵티라이프 어덜트 소형견용', 30]
        ]);

        var options = {
          title: '사료 순위 - 다이어트'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart2'));

        chart.draw(data, options);
      }
    </script>
    
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['PuppyFood', 'percent'],
          ['네츄럴코어 유기농 에코 4 오리고기 슬림다운 ', 10],
          ['뉴트리나 건강백서 말티즈  ', 25],
          ['웰니스 심플 그레인프리 연어&감자 스몰브리드 포뮬라 ', 40],
          ['오리젠 오리지널 ', 10],
          ['ANF 유기농 All Life 양고기 ', 15]
        ]);

        var options = {
          title: '사료 순위 - 알러지'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart3'));

        chart.draw(data, options);
      }
    </script>
        <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['PuppyFood', 'percent'],
          ['네츄럴코어 유기농 에코 2 오리고기 작은알갱이  ', 10],
          ['now 그레인프리 시니어 작은알갱이 ', 30],
          ['네츄럴코어 유기농 에코 4 오리고기 슬림다운 ', 20],
          ['ANF 홀리스틱 시니어 램&라이스 ', 20],
          ['토탈 이퀼리브리오 어덜트 스몰브리드 ', 10]
        ]);

        var options = {
          title: '사료 순위 - 위/장 기능'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart4'));

        chart.draw(data, options);
      }
    </script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../../views/admin/inc/header.jsp"></jsp:include>

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
				<li>맞춤정보</li>
				<li>></li>
				<li>질병</li>
			</ul>
			<br />
			<div id="underbar">
				<br>
				<br>
			</div>

         <section class="chart">
	         <div class="wrap" style="margin-top: -40px; margin-left: -70px;" >
		          <div id="chart1" style="width: 800px; height: 600px;"></div>
		          <div id="chart2" style="width: 800px; height: 600px;"></div>
	          </div>
                  <div class="wrap" style="margin-top: -138px; margin-left: -70px;">
         	<div id="chart3" style="width: 800px; height: 600px;"></div>
         	<div id="chart4" style="width: 800px; height: 600px;"></div>
         </div>
          </section>
            
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