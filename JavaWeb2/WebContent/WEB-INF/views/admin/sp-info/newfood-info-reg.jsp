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


      <div id="body">
         <div class="content-container">
            <main id="main">
            <div id="main-font">
            <img src="${path}/images/bg-board.png" height="45px" width="45px" />
            <label class="boradlabel"> 관리자페이지</label>
         </div>
         <!-- 본문 타이틀 -->
         <ul class="location" style="padding-left: 75px;">
            <!-- 로케이션 -->
            <li class="first">HOME>사료정보 등록</li>
         </ul>
         </br>
         <div id="underbar"></div>
         <br />
         <br />
                  <a class="btn3 btn-community3" href="newfood-info-reg">완료</a> 
         
<table class="table-basic-cm">

               
               <tr>
                     <th><label class="q-text">상품번호</label></th>
                     <td colspan="3">
                     2017957521
                     </td>
                  </tr>
                  <tr>
                     <th> <label class="q-text">사료명</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="사료명을 입력해주세요"/>
                     </td>
                  </tr>
                  <tr>
                     <th> <label class="q-text">회사명</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="회사명을 입력해주세요"/>
                     </td>
                  </tr>
                  
                  <tr>
                     <th> <label class="q-text">체형</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="체형을 입력해주세요"/>
                     </td>
                  </tr>
                   <tr>
                     <th colspan="2" style="border-right-style: 1px;"><label
                        class="q-text">대상나이</label></th>
                     <th colspan="2"><label class="q-text">크기</label></th>

                  </tr>
                  <tr>

                     <td colspan="2">
                        <div class="cm-check">
                           <li><label for="dogage"></label> 
                        <select name="dogage" style="width: 100px;">
                                 <option value="">나이  선택</option>
                                 <option value="1세미만">1세미만</option>
                                 <option value="1세~3세">1세~3세</option>
                                 <option value="4세~8세">4세~8세</option>
                                 <option value="9세이상">9세이상</option>
                           </select></li>
                        </div>
                     </td>

                     <td colspan="2">
                        <div class="cm-check">
                           <li><label for="dogage"></label> 
                        <select name="dogage" style="width: 100px;">
                                 <option value="">크기  선택</option>
                                 <option value="소형견">소형견</option>
                                 <option value="중형견">중형견</option>
                                 <option value="대형견">대형견</option>
                           </select></li>
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <th> <label class="q-text">피부타입</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="피부타입을 입력해주세요"/>
                     </td>
                  </tr>
                  <tr>
                     <th> <label class="q-text">건강상태</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="건강상태를 입력해주세요"/>
                     </td>
                  </tr>
                  <tr>
                     <th> <label class="q-text">상품특징</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="상품특징을 입력해주세요"/>
                     </td>
                  </tr>
                  <tr>
                     <th> <label class="q-text">원재료</label></th>
                     <td colspan="3">
                     <input type="text" style="width: 700px; height:30px; border: 0px;" placeholder="원재료를 입력해주세요"/>
                     </td>
                  </tr>                    
               </table>
            
            </main>

            
      <!-- aside  부분 -->
      <jsp:include page="../../../views/admin/inc/aside.jsp"></jsp:include>
      </div>
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