<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../inc/header.jsp"></jsp:include>

<!--                    visual  부분                             -->
<jsp:include page="inc/visual-mypage.jsp"></jsp:include>

      <div id="body">
         <div class="content-container">
            <main id="main">
            <div id="main-pont">
              <section class="title-small">회원탈퇴 신청 </section>
              <section class="sub-small">"그동안 PUPPY FOOD 101 사이트를 이용해 주셔서 감사합니다."</section>
              <br />
              <section class="title-small">탈퇴 아이디 확인</section>
              <table class="table-garo">
               <tr>
                <th>아이디</th>
                <td>alion</td>
               </tr>
               <tr>
                <th>이름</th>
                <td>강동원</td>
               </tr>
                
              </table>
              <section class="title-small">사이트 탈퇴 사유 </section>
                      <table class="table-garo">
                                 <thread>
                                     <tr>
                                       <th>탈퇴 사유</th>
                                       <th>선택</th>
                                     </tr>
                                 </thread>
                                 <tbody>
                                     <tr> 
                                       <td>서비스 기능 불편</td>
                                       <td class="children"><input type="checkbox" name="check"></td>
                                    </tr>
                                    <tr>
                                       <td>기록 삭제</td>
                                       <td class="children"><input type="checkbox" name="check"></td>
                                    </tr>
                                    <tr>
                                       <td>새 아이디 생성</td>
                                       <td class="children"><input type="checkbox" name="check"></td>
                                    </tr>
                                      <tr>
                                       <td>제재 조치로 이용이 제한</td>
                                       <td class="children"><input type="checkbox" name="check"></td>
                                    </tr>
                                      <tr>
                                       <td>개인정보 및 보안 우려</td>
                                       <td class="children"><input type="checkbox" name="check"></td>
                                    </tr>
                                 </tbody>
                            </table>
                            
                             <a class="btn edit-button-mie2">탈퇴확인</a>

         </main>

      <!-- aside  부분 -->
      <jsp:include page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
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