<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>일자리</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/job.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/job.js"></script>
</head>
<body>
	<div class="bg-img"></div>
	<div class="animation">
        <div class="loader loader-black loader-1"></div>
    </div>
	<div class="mic-container">
		<img class="mic-img" src="${pageContext.request.contextPath}/resources/images/mic.png" alt="마이크">
		<div class="mic-text">마이크를 클릭하세요</div>
	</div>
	<div class="input-container">
		<form class="ic-form" action="${pageContext.request.contextPath}/job2" method="get">
			<input class="ic-input" type="text" placeholder="지역구를 말씀해주세요" name="area">
			<img id="ic-sub" src="${pageContext.request.contextPath}/resources/images/btn_search.png" alt="검색 버튼">
		</form>
	</div>
	<div class="result1"></div>
</body>
</html>
