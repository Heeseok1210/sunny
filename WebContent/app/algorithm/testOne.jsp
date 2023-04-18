<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1번</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/testOne.css" />
</head>
<body>
	<section id="qna" class="mx-auto my-5 py-5 px-3">
		<progress value="40" max="200" id="my_skill"></progress>
		<h1>1. 반려식물을 키워본 경험이 있나요?</h1>
		<div class="answerContainer">
			<form
				action="${pageContext.request.contextPath}/algorithm/testTwo.ag"
				method="get">
				<input type="hidden" name="selectOne"> <input type="button"
					class="btn true" value="네"
					onclick="document.getElementsByName('selectOne')[0].value='1';this.form.submit();">
				<input type="button" class="btn no" value="아니오"
					onclick="document.getElementsByName('selectOne')[0].value='0';this.form.submit();">
			</form>
			
		</div>
		
	</section>

</body>
</html>