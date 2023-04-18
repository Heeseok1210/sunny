<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>식고수페이지</title>
<link rel="stylesheet"
	href="${pageContent.request.contextPath}/assets/css/questionList.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/header/header.jsp" />
	<div class="pcontainer">
		<!-- 모달창 -->
		<div id="myModal" class="modal">
			<div class="modal-content">
				<span class="close">&times;</span>
				<p>
					정확한 답변을 원하시나요?<br> 식고수님께서 궁금한 점을 바로 알 수 있도록 <br> 질문을 정확히
					작성해 보세요
				</p>
			</div>
		</div>
		<!-- 맨위 -->
		<div class="plus-top">
			<p>
				<strong> <c:out value="${gosuNickName}"></c:out>
				</strong> 님의 페이지에 오신 것을 환영합니다.
			</p>
		</div>
		<!-- 글작성팁 -->
		<div class="info">
			<div class="infozone" onclick="showModal()">
				<h3>
					<strong>글작성팁</strong> 식물에게 문제가 생기면 고수님에게 직접 도움을 요청해보세요
				</h3>
				<img
					src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNzIiIGhlaWdodD0iNDAiIHZpZXdCb3g9IjAgMCA3MiA0MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTQyLjY5IDBoMTUuMjI4YzEuNzU3IDAgMy40My4zNDggNC45NTEuOTc3QzY4LjIxMyAzLjAyIDcyIDguMDc0IDcyIDEzLjk5OWMwIDcuMDkyLTUuNDE4IDEzLjA2NS0xMi40NDUgMTMuOTg2LTEuMDIxLjEzNC0xLjkzNy0uNjMxLTEuOTM3LTEuNjM1di0xLjY0NUg0Mi42OWMtNy4wMDggMC0xMi42OS01LjUzLTEyLjY5LTEyLjM1M0MzMCA1LjUzMSAzNS42ODIgMCA0Mi42OSAwIiBmaWxsPSIjODBEQkI0Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNDEgMTEpIiBmaWxsPSIjRkZGIj4KICAgICAgICAgICAgPGNpcmNsZSBjeD0iMiIgY3k9IjIiIHI9IjIiLz4KICAgICAgICAgICAgPGNpcmNsZSBjeD0iMTAiIGN5PSIyIiByPSIyIi8+CiAgICAgICAgICAgIDxjaXJjbGUgY3g9IjE4IiBjeT0iMiIgcj0iMiIvPgogICAgICAgIDwvZz4KICAgICAgICA8Zz4KICAgICAgICAgICAgPHBhdGggZD0iTTI5LjMxIDEySDE0LjA4MmMtMS43NTcgMC0zLjQzLjM0OC00Ljk1MS45NzdDMy43ODcgMTUuMDIgMCAyMC4wNzQgMCAyNS45OTljMCA3LjA5MiA1LjQxOCAxMy4wNjUgMTIuNDQ1IDEzLjk4NiAxLjAyMS4xMzQgMS45MzctLjYzMSAxLjkzNy0xLjYzNXYtMS42NDVIMjkuMzFjNy4wMDggMCAxMi42OS01LjUzIDEyLjY5LTEyLjM1M0M0MiAxNy41MzEgMzYuMzE4IDEyIDI5LjMxIDEyIiBmaWxsPSIjNDVDNTlCIi8+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0xNS42NjcgMjIuMjVoLS44OWMtLjk4MSAwLTEuNzc3Ljc4My0xLjc3NyAxLjc1djUuMjVjMCAuOTY3Ljc5NiAxLjc1IDEuNzc4IDEuNzVoLjg4OWMuNDkgMCAuODg5LS4zOTIuODg5LS44NzV2LTdhLjg4Mi44ODIgMCAwIDAtLjg5LS44NzVtMTEuNTU2IDBoLTQuNDQ0bC43MzQtMi43MDZhMS43MzcgMS43MzcgMCAwIDAtLjczOC0xLjg4bC0uNzg3LS41MTdhLjg5Ny44OTcgMCAwIDAtMS4yODguMzM3bC0yLjAwNCA0LjAzOWEzLjQ1NiAzLjQ1NiAwIDAgMC0uMzYxIDEuNTM2djYuMTkxYzAgLjk2Ny43OTUgMS43NSAxLjc3NyAxLjc1aDYuMDQ0Yy44NDcgMCAxLjU3Ny0uNTg5IDEuNzQzLTEuNDA3bDEuMDY3LTUuMjVjLjIyLTEuMDgyLS42MjItMi4wOTMtMS43NDMtMi4wOTMiIGZpbGw9IiMxNTlBNkQiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo="
					alt="">
			</div>
		</div>
		<div class="pbtn">
			<a
				href="${pageContext.request.contextPath}/question/questionWrite.qs?gosuNumber=${question.getGosuNumber()}"
				class="plus-btn" onclick="questionList()">질문하기</a>
		</div>
		<div class="question">
			<h3 class="qq">질문</h3>
			<div class="q1">
				<!-- 미답변 -->
				<div class="noanswer">
					<button type="button">미답변</button>
					<table class="noreply-table">
						<tbody>
							<c:choose>
								<c:when test="${not empty questionList}">
									<c:forEach var="question" items="${questionList}">
										<c:if test="${question.getQuestionStatus() == '0'}">
											<tr class="imti">
												<td class="imgz"></td>
												<td class="title"><a
													href="${pageContext.request.contextPath}/question/questionReadOk.qs?questionNumber=${question.getQuestionNumber()}">
														${question.getQuestionTitle()} </a></td>
											</tr>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="3" align="center">질문이 없습니다.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<!-- 답변완료 -->
		<div class="answercom">
			<button type="button">답변완료</button>
			<table class="noreply-table">
				<tbody>
					<c:choose>
						<c:when test="${not empty questionList}">
							<c:forEach var="question" items="${questionList}">
								<c:if test="${question.getQuestionStatus() == '1'}">
									<tr class="imti">
										<td class="imgz"><a href=""> <%-- <img alt="" src="${question.getCoverImg()}">--%>
										</a></td>
										<td class="title">${question.getQuestionTitle()}</td>
									</tr>
								</c:if>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="3" align="center">답변완료된 질문이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
	</div>


	<jsp:include
		page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
	<script
		src="${pageContent.request.contextPath}/assets/js/questionList.js"></script>
	</div>
</body>
</html>

