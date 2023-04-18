<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5번</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/testFive.css" />
</head>
<body>
	    <section id="qna" class="mx-auto my-5 py-5 px-3">
      <progress value="200" max="200" id="my_skill"></progress>
      <a href="http://localhost:8085/algorithm/index.ag">
      <img src="../../assets/img/algorithm/index/home.png" 
        class = "img"></a>
      <div class="questionContainer">
        <h1>5. 실내온도가 18도 이상인 공간이 있나요?</h1>
      </div>
      <div class="answerContainer">
        	<form action="${pageContext.request.contextPath}/algorithm/loading.ag" method="post">
		<input type="hidden" name="selectFive" value="0">
		<input type="button"class="btn true"  value="네" onclick="document.getElementsByName('selectFive')[0].value='1';this.form.submit();">
		<input type="button"  class="btn no"value="아니오" onclick="document.getElementsByName('selectFive')[0].value='0';this.form.submit();">
	</form>
      </div>
    </section>
</body>
</html>