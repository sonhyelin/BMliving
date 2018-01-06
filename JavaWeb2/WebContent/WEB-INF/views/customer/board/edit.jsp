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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<!--                    헤더  부분                             -->
	<jsp:include page="../inc/header.jsp"></jsp:include>


	 <!--                      visual 부분                           -->
 
   <jsp:include page="inc/visual-community.jsp"></jsp:include>

   <div id="body">
      <div class="content-container">
         <main id="main">
         <div id="main-font">
         <img src="${path}/images/bg-board.png" height="45px" width="45px"/>
         <label class="boradlabel">
            자유 게시판</label></div><!-- 본문 타이틀 -->
                  <ul class="location"><!-- 로케이션 -->
                      <li class="first">HOME</li>
                     <li>></li>
                     <li>커뮤니티</li>
                     <li>></li>
                     <li>자유 게시판</li>
                  </ul>
            <br />
         
         <div id="underbar"><br><br></div>
    <form method="post">
          <table class="table-garo2">
          <tr>
               <th>제목</th>
               <td  class="hi" colspan="3"><input type="text" name="title" value="${board.title}"/></td>
            </tr>      
            <tr>
               <th>작성일</th>
               <td colspan="3">${board.regDate}</td>
            </tr>
            <tr>
               <th>작성자</th>
               <td>${board.memberId}</td>
               <th>조회수</th>
               <td>${board.hit}</td>
            </tr>
           
            <tr>
               <td colspan="4" class="editcontent">
                  <textarea name="content" >${board.content}</textarea>
               </td>
            </tr>
            </table>
            
            <div class="editbutton">
            <ul>
               <li><input type="hidden" name="number" value="${board.number}"/></li>
               <li><input type="submit" class="btn1" value="저장" style="width: 80px; border: 0px;"/></li>
               <li><a href="detail?number=${board.number}" class="btn1">취소</a></li>
               </ul>
            </div>
         </form>
      </main>
         
     

			<!-- aside  부분 -->
			<jsp:include
				page="../../../views/customer/board/inc/aside-community.jsp"></jsp:include>


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