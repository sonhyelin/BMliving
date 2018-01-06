<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-admin.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../../../views/admin/inc/header.jsp"></jsp:include>

   <div id="body">
      <div class="content-container">
            <main id="main">
            <div id="main-pont">
            	<label class="title">악성후기 삭제</label>
                <input class="btn delete-button" type="submit" value="삭제"/> 
             <table id="table-sero-list" class="table-sero">
                  <tr>
                     <th class="w60">등록일</th>
                       <td colspan="3">2017-09-04</td>
                     <th class="w60">상품명</th>
                     <td>로얄캐닌</td>
                     <th class="w60">제조사</th>
                     <td>쌍용퍼피</td>
                  </tr>
                   <tr>
                     <th class="w60">제목</th>
                     <td colspan="3">@@@@</td>
                     <th class="w60">작성자</th>
                     <td colspan="3">cocolove</td>
                  </tr>
                  <tr>
                     <th>내용</th>
                     <td colspan="7">$$$$</td>
                  </tr>
               </table>
               
               <label id="list-label">해당 후기를 삭제하겠습니까?</label>
                  <input class="btn yes-button" type="submit" value="예"/>
                  <input class="btn no-button" type="submit" value="아니요"/>
            </div>
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
   
      <script type="text/javascript">
            $(document).ready(function() {                 
                //전체 선택/해제
                $("#check-all").click(function(){             
                    var chk = $(this).is(":checked");                     
                    if(chk){
                        $('input[name*="check"]').prop('checked', true);
                    }else{
                        $('input[name*="check"]').prop('checked', false);
                    }                     
                });
                 
                //체크 항목 확인
                $("#check").click(function(){                  
                    $('input[name*="check"]').each(function(i){                 
                        if($(this).is(":checked")){
                            alert($(this).val());
                        }
                    });                 
                });                                  
            });
</script>
   
</body>
</html>