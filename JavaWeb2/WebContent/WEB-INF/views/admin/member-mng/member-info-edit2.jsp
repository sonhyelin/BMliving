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
               </br>
               <form>
                  <label class="title">회원정보수정페이지2-고객상세정보</label>
               </form>
            </div>
            <div>
               <nav id="img-table">
                  <img src="${path}/images/coco.png" alt="강아지 사진"/>
                  <table class="table-sero" id="table-sero-mie2">
                         <tr>
                          <th scope="row">아이디</th>
                          <td>cocolove</td>
                         </tr>
                         <tr>
                          <th scope="row">가입자 이름</th>
                          <td>백지원</td>
                         </tr>
                        <tr>
                          <th scope="row">강아지 이름</th>
                          <td>코코</td>
                         </tr>
                         <tr>
                          <th scope="row">강아지 나이</th>
                          <td>8살</td>
                         </tr>
                         <tr>
                          <th scope="row">강아지 사이즈</th>
                          <td>중형견</td>
                         </tr>
                         <tr>
                          <th scope="row">강아지 종</th>
                          <td>푸들</td>
                         </tr>
                        <tr>
                          <th scope="row">강아지 성별</th>
                          <td>암컷</td>
                         </tr>
                  </table>
               </nav>
            </div>
            <div>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>
            <label class="title">나의 후기 목록</label>
               <nav id="table-3">
                  <table class ="table-garo">
                           <thread>
                               <tr>
                                 <th class="num">번호</th>
                                 <th class="date" >날짜</th>
                                 <th class="content">입력내용</th>
                               </tr>
                           </thread>
                           <tbody>
                               <tr>
                                 <td>1</td>
                                 <td width=400px>2017-08-24</td>
                                 <td>손대표 무셔워,,ㅠㅠ</td>
                              </tr>
                              <tr>
                                 <td>2</td>
                                 <td width=400px>2017-08-24</td>
                                 <td>김아현은 세상 뻔뻔-+-</td>
                              </tr>
                              <tr>
                                 <td>3</td>
                                 <td width=400px>2017-08-24</td>
                                 <td>프로젝트 넘나 어려운것</td>
                              </tr>
                            </tbody>
                         </table>
               </nav>
                  <a href="member-info-edit3" class="btn edit-button-mie2">수정</a>
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