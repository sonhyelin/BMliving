<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page
	import="com.puppyfood101.javaweb.jdbcdao.JdbcMemberDao, com.puppyfood101.javaweb.dao.MemberDao, com.puppyfood101.javaweb.entity.MyPageView"%>
<%
	MemberDao dao = new JdbcMemberDao();
	String id = (String) session.getAttribute("id");
	MyPageView vo = dao.selectMember(id);
%>

<c:set var="path" value="${pageContext.request.contextPath}"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style.css" type="text/css" rel="stylesheet" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<!--                    헤더  부분                             -->
<jsp:include page="../inc/header.jsp"></jsp:include>

<!--                    visual  부분                             -->
<jsp:include page="inc/visual-mypage.jsp"></jsp:include>

   <div id="body">
      <div class="content-container">
            <main id="main">
           <div id="main-font">
				<img src="${path}/images/bg-board.png" height="45px" width="45px" />
				<label class="boradlabel"> 관리자페이지</label>
			</div>
			<!-- 본문 타이틀 -->
			<ul class="location">
				<!-- 로케이션 -->
				<li class="first">HOME</li>
				<li>></li>
				<li>회원정보</li>
				<li>></li>
				<li>정보수정</li>
			</ul>
			<br />

			<div id="underbar">
				<br>
				<br>
			</div>
             
            
              <form method="post" action="MainForm.jsp?contentPage=member/pro/ModifyPro.jsp" 
                name="userInfo" onsubmit="return checkValue()">
                
            <table class="table-garo-mypage">
                <tr>
                    <td style="background-color: #f8f2da;">아이디</td>
                    <td id="title"><%=vo.getId() %></td>
                </tr>
                <tr>
                    <td style="background-color: #f8f2da;">비밀번호</td>
                    <td>
                        <input type="password" name="password" maxlength="50" 
                            value="<%=vo.getPassword()%>">
                    </td>
                </tr>
            </table>    
       
            <table class="table-garo-mypage">
 
                <tr>
                    <td style="background-color: #f8f2da;">이름</td>
                    <td><%=vo.getMemberName() %></td>
                </tr>
                    
       
                    
                <tr >
                    <td style="background-color: #f8f2da;">생일</td>
                    <td>
                        <%=vo.getBirthDate()%>
                    </td>
                </tr>
                    
                <tr>
                    <td style="background-color: #f8f2da;">이메일</td>
                    <td>
                        <input type="text" name="mail1" maxlength="50" 
                            value="<%=vo.getEmail() %>">
                    </td>
                </tr>
                    
                <tr>
                    <td style="background-color: #f8f2da;">휴대전화</td>
                    <td>
                        <input type="text" name="phone" value="<%=vo.getPhoneNumber() %>"/>
                    </td>
                </tr>
            </table>
            
            
            <table class="table-garo-mypage">
 
                <tr>
                    <td style="background-color: #f8f2da;">반려견 이름</td>
                    <td><%=vo.getPuppyName()%></td>
                </tr>
                <tr>
                    <td style="background-color: #f8f2da;">반려견 성별</td>
                    <td>
                        <input type="text" name="sex" maxlength="50" 
                            value="<%=vo.getSex()%>">
                    </td>
                </tr>
                    
                <tr >
                    <td style="background-color: #f8f2da;">반려견 생일년도</td>
                    <td>
                      <input type="text" name="birthyear" maxlength="50" 
                            value=" <%=vo.getBirthYear()%>"> 
                    </td>
                </tr>
                    
                <tr>
                    <td style="background-color: #f8f2da;">반려견 사이즈</td>
                    <td>
                        <input type="text" name="size" maxlength="50" 
                            value="<%=vo.getSize()%>">
                    </td>
                </tr>
                    
                <tr>
                    <td style="background-color: #f8f2da;">반려견 타입</td>
                    <td>
                        <input type="text" name="phone" value="<%=vo.getKind()%>"/>
                    </td>
                </tr>
            </table>
            <br><br>
            <div class="reg-button" style="display: flex;">
            <input type="button" value="취소" onclick="javascript:window.location='mypage-check'" class="btn1"  style="margin-left: 110px; margin-top: -35px;">
            <input type="button" value="수정"  class="btn1" style="margin-left: 20px; margin-top: -35px;"/>  
            </div>
        </form>
            </main>
         
         
      <!-- aside  부분 -->
      <jsp:include page="../../../views/customer/member/inc/aside-mypage.jsp"></jsp:include>
      
      </div>
   </div>



<!--                            footer 부분                      -->
<jsp:include page="../../inc/footer.jsp"></jsp:include>

  
    <script type="text/javascript">
    
      
        function setComboValue(val) 
        {
            var selectMail = document.getElementById('id'); // select 아이디를 가져온다.
            for (i = 0, j = selectMail.length; i < j; i++)  // select 하단 option 수만큼 반복문 돌린다.
            {
                if (selectMail.options[i].value == val)  // 입력된값과 option의 value가 같은지 비교
                {
                    selectMail.options[i].selected = true; // 같은경우라면 체크되도록 한다.
                    break;
                }            }
        }
        
  
   
        
    </script>



   
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