<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-find-id-pw.css" type="text/css" rel="stylesheet" />
</head>
<body>

<section class="container">
		    <article class="half">
			        <h1><img src="${path}/images/logo.png" alt="puupyfood101" width="130px", height="100px"></h1>
			        <div class="tabs">
				            <span class="tab signin active"><a href="#signin">아이디 찾기</a></span>
				            <span class="tab signup"><a href="#signup">비밀번호 찾기</a></span>
			        </div>
			        <div class="content">
				            <div class="signin-cont cont">
					                <form action="#" method="post" enctype="multipart/form-data">
						                    <input type="text" name="name" id="name" class="inpt" required="required" placeholder="이름을 입력하세요">                 
						                    <input type="text" name="email" id="email" class="inpt" required="required" placeholder="이메일을 입력하세요">                						 
						                    <div class="submit-wrap">
							                        <input type="submit" value="아이디 찾기" class="submit">
						                    </div>
        					        </form>
    				        </div>
    				        
    				        <div class="signup-cont cont">
                <form action="#" method="post" enctype="multipart/form-data">
                							<input type="text" name="id" id="id" class="inpt" required="required" placeholder="아이디를 입력하세요">                						   
						                    <input type="text" name="name" id="name" class="inpt" required="required" placeholder="이름을 입력하세요">			                  
                   							 <input type="email" name="email" id="email" class="inpt" required="required" placeholder="이메일을 입력하세요">
						                
						                    <div class="submit-wrap">
							                        <input type="submit" value="비밀번호 찾기" class="submit">
						                    </div>
        					        </form>
            </div>
			        </div>
		    </article>
		    <div class="half bg"></div>
	</section>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
<script type="text/javascript">
$('.tabs .tab').click(function(){
    if ($(this).hasClass('signin')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signin-cont').show();
    } 
    if ($(this).hasClass('signup')) {
        $('.tabs .tab').removeClass('active');
        $(this).addClass('active');
        $('.cont').hide();
        $('.signup-cont').show();
    }
});
$('.container .bg').mousemove(function(e){
    var amountMovedX = (e.pageX * -1 / 30);
    var amountMovedY = (e.pageY * -1 / 9);
    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
});
</script>

</body>
</html>