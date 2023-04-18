<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh"
	content="3;URL='http://127.0.0.1:5500/html/FindMyPlant/result/result.html'">
<title>로딩 페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/loading.css" />
</head>
<body>
	<form action="${pageContext.request.contextPath}/algorithm/result.ag"
		method="get">
		<section class="loading">
			<h1 class="loading-title">Loading....</h1>
			<div class="progress-bar" aria-hidden="true">
				<span class="progress-bar-gauge"></span>
			</div>
		</section>
	</form>
	<script src="../../../assets/js/result.js"></script>
</body>
</html>