<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>고수신청목록</title>
<link rel="stylesheet"
	href="../../assets/css/gosuApplicationBoardList.css" />
</head>
<jsp:include
	page="${pageContext.request.contextPath}/app/admin/adminHeader.jsp" />
<body>
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
						<h1>식고수신청관리게시판</h1>
					</div>
					<p>식고수 신청한 회원들의 신청 게시글이 있습니다.</p>
				</div>
				<div class="board_wrap">
					<div class="board_list_wrap">
						<div class="board_list">
							<div class="top">
								<div class="num">번호</div>
								<div class="title">제목</div>
								<div class="writer">글쓴이</div>
								<div class="date">작성일</div>
							</div>
							<!--  예시  -->

							<c:choose>
								<c:when test="${not empty applicationList }">
									<c:forEach var="applicationList" items="${applicationList }">
										<div>
											<div class="num">${applicationList.getApplyNumber() }</div>
											<div class="title">
												<a
													href="gosuApplicationBoardRead.ad?applyNumber=${applicationList.getApplyNumber() }">${applicationList.getApplyTitle() }</a>
											</div>
											<div class="writer">${applicationList.getUserNickname() }</div>
											<div class="date">${applicationList.getApplyDate() }</div>
										</div>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5" align="center">고수 신청한 회원이 없습니당.</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include
		page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
</body>
</html>
