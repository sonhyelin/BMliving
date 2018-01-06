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
            <li>나이</li>
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
          
           <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['PuppyFood', 'percent'],
          ['now 그레인프리 퍼피 작은알갱이', 30],
          ['로얄캐닌 미니 인도어 주니어', 20],
          ['로얄캐닌 미니 스타터', 20],
          ['네츄럴코어 유기농 에코 5 퍼피 작은알갱이', 15],
          ['오리젠 퍼피', 10]
        ]);

        var options = {
          title: '사료 순위 - 1살 미만'
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
          ['now 그레인프리 어덜트 작은알갱이', 40],
          ['로얄캐닌 푸들 어덜트', 10],
          ['로얄캐닌 미니 인도어 어덜트', 10],
          ['오리젠 오리지널 독', 25],
          ['로얄캐닌 말티즈 어덜트 ', 10]
        ]);

        var options = {
          title: '사료 순위 -1살 이상'
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
          ['now 그레인프리 어덜트 작은알갱이 ', 10],
          ['로얄캐닌 미니 인도어 어덜트 ', 25],
          ['로얄캐닌 푸들 어덜트 ', 40],
          ['오리젠 오리지널 ', 10],
          ['뉴트로 내추럴 초이스 어덜트 소형견용 ', 15]
        ]);

        var options = {
          title: '사료 순위 - 1세-7세'
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
          ['네츄럴코어 유기농 에코 9a 시니어 오리&고구마 ', 10],
          ['now 그레인프리 시니어 작은알갱이 ', 30],
          ['ANF 시니어 라이트 ', 20],
          ['ANF 홀리스틱 시니어 램&라이스 ', 20],
          ['뉴트리나 건강백서 건강한 6세+', 10]
        ]);

        var options = {
          title: '사료 순위 - 7세 초과'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart4'));

        chart.draw(data, options);
      }
    </script>
        
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