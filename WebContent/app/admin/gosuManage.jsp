<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>식고수회원관리</title>
<link rel="stylesheet" href="../../assets/css/gosuManage.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog=="
	crossorigin="anonymous" />
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/admin/adminHeader2.jsp" />
	<div class="sidebar-read-all">
		<div class="sidevar">
			<div class="admin-info-all">
				<div class="admin-info">
					<div class="info-top">
						<h3>관리자</h3>
					</div>
				</div>
				<div class="admin-info2">
					<div class="admin-img-name-date">
						<div class="admin-imgbox">
							<div class="admin-img">
								<a href=""><img src="../../assets/img/admin/sogum.jpg"
									alt="" /></a>
							</div>
						</div>
						<div class="admin-name-date">
							<div class="admin-name">소금</div>
							<div class="admin-date">가입일 2023.03.21</div>
						</div>
					</div>
				</div>
			</div>
			<div class="manage-all">
				<div class="manage-manu">
					<div class="user-manage">
						<div class="user-manage-headline">
							<img src="../../assets/img/admin/user.png" alt="" />
							<h2>관리하기</h2>
						</div>
						<div class="hr">
							<hr />
						</div>
						<div class="user-manage-list">
							<div class="all-user-manage">
								<a href="userManage.ad">전체회원관리</a>
							</div>
							<div class="gosu-user-manage">
								<a href="gosuManage.ad">식고수회원관리</a>
							</div>
							<div class="gosu-application-user-manage">
								<a href="gosuApplicationBoardList.ad">식고수신청관리</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="board-read-all">
			<div class="read-container">
				<div class="view-wrap">
					<div class="view-title">
						<h1>식고수회원관리</h1>
					</div>
					<p>식고수 회원관리를 할 수 있습니다. 회원 닉네임을 클릭시 회원 상세페이지로 넘어갑니다.</p>
				</div>
				<table class="user-manage-table">
					<thead>
						<tr>
							<th class="gosu-num">식고수번호</th>
							<th>닉네임</th>
							<th>전문분야</th>
							<th class="gosu-question-count">전체질문수</th>
							<th class="gosu-answer-count">답변완료질문수</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${not empty gosuList }">
								<c:forEach var="gosu" items="${gosuList }">
									<tr>
										<td class="gosu-num">${gosu.getGosuNumber() }</td>
										<td class="gosu-nickname"><a href="gosuDetail.ad?userNumber=${gosu.getUserNumber() }">${gosu.getUserNickname() }</td>
										<td class="gosu-fieldnames">${gosu.getFieldNames() }</a></td>
										<td class="gosu-question-count">${gosu.getQuestionCount() }</td>
										<td class="gosu-answer-count">${gosu.getAnswerCount() }</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5" align="center">회원이 한명도 없습니다. ㅜ</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
				<div class="search" id="search">
					<input type="text" class="input" placeholder="Search name..." value="" id="searchPram" onkeyup="if(window.event.keyCode==13){searchAction()}"/>
					<button class="btn">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include
	page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="../../assets/js/gosuManage.js"></script>
</body>
</html>
