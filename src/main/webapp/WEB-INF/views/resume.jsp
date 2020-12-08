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
	<div class="animation">
        <div class="loader loader-black loader-1"></div>
    </div>
	<div class="mic-container">
		<img class="mic-img" src="${pageContext.request.contextPath}/resources/images/mic.png" alt="마이크">
		<div class="mic-text">마이크를 클릭하세요</div>
	</div>
	<div class="resume">
		<h1>이름을 말씀해주세요</h1>
		<div class="flex"><input id="rs-input" type="text" placeholder="예시: 홍길동"><br></div>
		<div id="result"><div id="rs-test">성함이 일치합니까?</div><div id="yes">예</div><div id="no">아니오</div></div>
		<div id="result2">마이크를 다시 눌러서 이름을 말씀해주세요</div>
		<div id="next">다음</div> 
	</div>
</body>
</html>