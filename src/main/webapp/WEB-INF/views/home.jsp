<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>홈</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/home.js"></script>
	<style>
		.bg-img { background-image: url('${pageContext.request.contextPath}/resources/images/bg_home.png'); }
	</style>
</head>
<body>
	<div class="bg-img"></div>
	<img id="btn-start" src="${pageContext.request.contextPath}/resources/images/btn_start.png" alt="시작">
</body>
</html>
