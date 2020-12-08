<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>이력서</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/resume.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/resume4.js"></script>
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
	<div class="resume">
		<h1>전화번호를 말씀해주세요</h1>
		<div class="flex"><input type="text" placeholder="예시: 010-1234-1234"><br></div>
		<div id="btn-num"></div>
		<div id="next">다음</div>
	</div>
</body>
</html>