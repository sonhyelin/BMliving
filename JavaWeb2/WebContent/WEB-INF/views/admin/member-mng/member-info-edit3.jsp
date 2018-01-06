<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
               <br />
               <form>
                  <label class="title">회원정보수정페이지3-고객상세정보</label>
               </form>
            </div>
            <div>
                  <table class="table-sero" id="table-sero-mie3">
                        <tr>
                          <th class="w130" scope="row">이미지</th>
                          <td><input type="submit" value="이미지 찾기" /></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">아이디</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                          <tr>
                          <th class="w130" scope="row">기존 비밀번호</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                          <tr>
                          <th class="w130" scope="row">변경 비밀번호</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">이름</th>
                          <td> <input class="w300 h30 none-border"  type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">핸드폰 번호</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">생년월일</th>
                          <td> <input class="w300 h30 none-border"  type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">이메일</th>
                          <td> <input class="w300 h30 none-border"  type="text" name="title"/></td>
                         </tr>
                       
                  </table>
                  
                  <table class="table-sero" id="table-sero-mie3">
                            <tr>
                          <th class="w130" scope="row">반려견 이름</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">반려견 생년월일</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">반려견 사이즈</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                         <tr>
                          <th class="w130" scope="row">반려견 종</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                        <tr>
                          <th class="w130" scope="row">반려견 성별</th>
                          <td> <input class="w300 h30 none-border" type="text" name="title"/></td>
                         </tr>
                   </table>

            </div>
            <div>
            <br/>
            <br/>
            <form class="mypage-edit2">
               <a href="" class="btn ok-button2">완료</a>
               <a href="member-info-edit" class="btn cancel-button">취소</a>
            </form>
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

</body>
</html>