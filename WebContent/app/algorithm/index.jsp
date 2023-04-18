<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>나의 반려식물 찾기 테스트</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/index.css">
</head>
<body>
	<div class="container">
		<section id="main" class="mx-auto my-5 py-5 px-3")>
			<div class="col-lg-6"></div>
			<p>
				나의 반려식물 찾기<br /> 테스트
			</p>
			<div class="btngroup">
				<a href="${pageContext.request.contextPath}/algorithm/testOne.ag">
					<input type="submit" value="시작하기" class="btn">
					</a>
			</div>
		</section>
	</div>
</body>
</html>
