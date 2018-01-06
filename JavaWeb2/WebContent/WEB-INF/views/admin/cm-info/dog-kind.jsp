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
          ['사료 1', 30],
          ['사료 2', 20],
          ['사료 3', 20],
          ['사료 4', 15],
          ['사료 5', 10]
        ]);

        var options = {
          title: '사료 순위 -푸들'
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
          ['사료 1', 30],
          ['사료 2', 20],
          ['사료 3', 20],
          ['사료 4', 15],
          ['사료 5', 10]
        ]);

        var options = {
          title: '사료 순위 -말티즈'
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
          ['사료 1', 50],
          ['사료 2', 20],
          ['사료 3', 15],
          ['사료 4', 7.5],
          ['사료 5', 7.5]
        ]);

        var options = {
          title: '사료 순위 -시츄'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart3'));

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
         <label class="title">강아지 종별 사료</label>
         <section class="chart">
          <div id="chart1" style="width: 300px; height: 200px;"></div>
          <div id="chart2" style="width: 300px; height: 200px;"></div>
          <div id="chart3" style="width: 300px; height: 200px;"></div>
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