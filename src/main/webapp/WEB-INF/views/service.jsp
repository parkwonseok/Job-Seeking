<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>서비스 선택</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/service.css">
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/service.js"></script>
</head>
<body>
	<div class="job-container">
        <img src="${pageContext.request.contextPath}/resources/images/job.png" alt="일자리">
        <div class="title">일자리</div>
    </div>
    <div class="education-container">
        <img src="${pageContext.request.contextPath}/resources/images/education.png" alt="교육">
        <div class="title">교육</div>
    </div>
    <div class="hobby-container">
        <img src="${pageContext.request.contextPath}/resources/images/delivery.png" alt="택배">
        <div class="title">택배</div>
    </div>
</body>
</html>
