<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>이력서</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/resume.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/resume.js"></script>
</head>
<body>
	<div class="bg-img"></div>
	<div class="photo">
		<div id="pt-text">사진을 등록하겠습니다</div>
		<div id="next">다음</div>
	</div>
	<script>
	$(function(){
		$(document).on('click', '#next', function(){
			location.href = 'http://localhost:8080/app/resume';
		});
	});
	</script>
</body>
</html>