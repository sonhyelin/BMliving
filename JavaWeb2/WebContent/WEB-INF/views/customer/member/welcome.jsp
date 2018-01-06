<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>puppyfood101</title>
<link href="${path}/css/style-welcome.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="wrapper">
		<div class="main">
			
			<div class="login_box">
			<form>
				<div class="logo">
				<img src="../../images/logo.png" alt="" /><br>
			</div>
				
			<div class="ment">
            <img src="../../images/welcomement.png" alt="" />
           
           </div>
           <div class="button">
            <button type="button" onclick="location.href='../../customer/home/main'">시작하기</button>
            <br>
                 <br>
                      <br>
                           <br>
            </div>
         
			</form>
		</div>
	  </div>
	</div>
</body>
</html>