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
					<nav id="seach-form">
						</br>
							<label class="title">회원정보수정페이지1</label>
							<form class="search-check">
								<label>검색어</label>
								<input type="text"/>
								<input class=" btn search-button"  type="submit" value="검색" >
							</form>
							
					</nav>
                          <br/> 
                           <table class="table-garo">
                            <tr>
                              <th class="num">번호</th>
	                          <th class="name" >회원명</th>
	                          <th class="id">아이디</th>
                              <th class="regdate">가입날짜</th>
                            </tr>
                            <tr>
                              <td>1</td>
                              <td width=400px>손혜린</td>
                              <td>hand</td>
                              <td>2017-08-22</td>
                           </tr>
                           <tr>
                              <td>2</td>
                              <td width=400px>김아현</td>
                              <td>YangA</td>
                              <td>2017-08-22</td>
                           </tr>
                           <tr>
                              <td>3</td>
                              <td width=400px>백지원</td>
                              <td>cocolove</td>
                              <td>2017-08-22</td>
                           </tr>
                         </table>
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