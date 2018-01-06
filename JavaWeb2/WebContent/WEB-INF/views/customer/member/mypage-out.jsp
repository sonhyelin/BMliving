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
               <section class="title-small">탈퇴 안내</section>
                  <section class="sub">회원 탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요</section>
                  <br/>
                  <section class="sub sub-small2">
                     사용하고 계신 아이디는 탈퇴할 경우 재사용 및 복구가 불가능합니다.<br/>
                     탈퇴한 아이디는 본인과 타인 모두 재사용이 불가하오니 신중하게 선택하시기 바랍니다.
                  </section>
                  <br/><br/>
                  <section class="sub">
                     탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.<br/><br/>
                     탈퇴 후에는 기존 사용하고 계시는 아이디로 다시 가입할 수 없으며 아이디와 데이터는<br/>
                     복구 할 수 없습니다. 후기형 서비스에 남아있는 후기는 탈퇴후 삭제할 수 없습니다.
                  </section>
                  <br/><br/>
                  <form method="post">
                  <a class="sub sub-small3" >안내 사항을 모두 확인하였으며, 이에 동의합니다.</a>
                  <br/><br/>
                  <a href="mypage-out3" class="btn ok-button">확인</a>
                  </form>
            </div>
            
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