<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>이력서</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/resume.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="bg-img"></div>
	<img class="path-img" src="${pageContext.request.contextPath}/resources/images/resume_sample.PNG">
	<div class="resume2">
		이력서 파일이 바탕화면에 저장되었습니다<br>
		파일 이름: 이력서.xlsx
		<div id="go-back">다른 서비스 이용하기</div>
	</div>
	<script>
	$(function(){
		$(document).on('click', '#go-back', function(){
			location.href = 'http://localhost:8080/app/service';
		});
	});
	</script>
</body>
</html>