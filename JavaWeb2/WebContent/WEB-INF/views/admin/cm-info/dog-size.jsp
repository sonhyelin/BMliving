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
          ['네츄럴코어 홀리스틱 베네 M32 멀티프로테인 ', 20],
          ['네츄럴코어 유기농 에코 2 오리고기 작은알갱이 ', 35],
          ['now 그레인프리 어덜트 작은알갱이 ', 10],
          ['ANF 프리미엄 램28 양고기 ', 15],
          ['로얄캐닌 미니 인도어 주니어 ', 10]
        ]);

        var options = {
          title: '사료 순위 - 소형견/중형견'
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
          ['네츄럴코어 유기농 에코 1 양고기 작은알갱이 ', 30],
          ['ANF 프리미엄 램28 양고기', 20],
          ['go! 연어', 10],
          ['ANF 유기농 All Life 양고기 ', 35],
          ['오리젠 오리지널 독', 10]
        ]);

        var options = {
          title: '사료 순위 - 대형견'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart2'));

        chart.draw(data, options);
      }
    </script>
    
<!--     <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['PuppyFood', 'percent'],
          ['사료 1', 50],
          ['사료 2', 20],
          ['사료 3', 15],
          ['사료 4', 15]
        ]);

        var options = {
          title: '사료 순위 -대형견'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart3'));

        chart.draw(data, options);
      }
    </script> -->
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
						<li>사이즈</li>
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