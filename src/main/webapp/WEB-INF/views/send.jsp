<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>제출</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/send.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="bg-img"></div>
	<div class="job-list">
		<div class="rl-title">일자리 정보</div>
		<div class="job-input"></div>
		<c:forEach var="job" items="${jobList}">
			<div class="file">${job.name }<div class="btn-sub">선택</div></div>
		</c:forEach>
	</div>
	<div class="sub">
		<div id="sub2">제출하시겠습니까?<div id="yes">예</div><div id="no">아니오</div></div>
	</div>
	<div id="sub-res" style="display: none;">이력서를 제출하였습니다</div>
	<script>
		$(function(){
			$('.job-list .btn-sub').click(function(){
				$('.job-input').text('parkws94@naver.com');
			});
			$('.resume-list .btn-sub').click(function(){
				var fname = $(this).parent().children('.fname').text();
				$('.rl-input').text(fname);
			});
			$('#sub-btn').click(function(){
				$('#sub-res').show();
			});
			$('#yes').click(function(){
				$('#sub-res').show();
			});
		});
	</script>
</body>
</html>
