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
         <jsp:include
            page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
         <main id="main">
         <form class="pw-check-form">
            <div>
               <img id="mypage-logo" src="${path}/images/logo.png" alt="로고"/>
            </div>
            <div id="center">
                  <label class="pw-check">비밀번호 확인</label>
                  <br />
                  <label class="pw-check">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 확인합니다.</li><br/><br/>
                  <input id="edit-pw-input" size="30px;" type="password" name="pwd" />
                  <input class=" btn login-button" type="submit" value="확인" />
                  
                  <br/><br/><br/>
                  <label>▶ 비밀번호를 잊으셨다면? <a href="find-id-pw">Click</a></label>
            </div>
            </div>
         </form>
         </main>
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