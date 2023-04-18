<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPage.css" />
</head>
<body>
	<jsp:include
		page="${pageContext.request.contextPath}/app/header/header.jsp" />
	<div class="container">
		<!-- 프로필구역 -->
		<section class="main1">
			<div class="main1--top">
				<!-- 식집사/식고수 텍스트 바꿔서 넣어야함 , 이름 띄움-->
				<h1>
					<span class="grade"></span> <span><c:out
							value="${myPage.getUserNickname()}" /></span> 입니다
				</h1>
				<c:if test="${sessionScope.userNumber !=  myPage.getUserNumber()}">
				<!-- 버튼을 누르면 마이페이지에 저장됨 --> <!-- following 클래스를 줬다뺐다 -->
				<button class="user-follow" data-userNumber="${myPage.getUserNumber()}"></button>
				</c:if>
			</div>
			<div class="main1--bottom">
				<div class="main1--modify">
					<!-- 회원정보수정페이지로 이동 -->
					<c:if test="${sessionScope.userNumber ==  myPage.getUserNumber()}">
						<a href="${pageContext.request.contextPath}/user/userModify.us">회원정보수정
							></a>
					</c:if>
					<!-- 모달창 필요함-->
					<button class="grade-info">등급보기 ></button>
				</div>
				<div class="main1--profile">
					<div class="profile-left">
						<!-- 사진 등록 전에는 기본아이콘 들어가있게 -->
						<div class="profile-photo-regist">
							<div class="profile-photo">
								<c:choose>
									<c:when test="${empty myPage.getUserFile()}">
										<img
											src="${pageContext.request.contextPath}/assets/img/myPage/logo.png" />
									</c:when>
									<c:otherwise>
										<img
											src="${pageContext.request.contextPath}/uploadProfile/${myPage.getUserFile().getFileSystemName()}"
											alt="" />
									</c:otherwise>
								</c:choose>
							</div>

							<!-- 버튼누르면 모달창으로 사진등록-->
							<c:if
								test="${sessionScope.userNumber ==  myPage.getUserNumber()}">
								<button type="button" class="profile-photo-btn">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                    <path
											d="M220.6 121.2L271.1 96 448 96v96H333.2c-21.9-15.1-48.5-24-77.2-24s-55.2 8.9-77.2 24H64V128H192c9.9 0 19.7-2.3 28.6-6.8zM0 128V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H271.1c-9.9 0-19.7 2.3-28.6 6.8L192 64H160V48c0-8.8-7.2-16-16-16H80c-8.8 0-16 7.2-16 16l0 16C28.7 64 0 92.7 0 128zM168 304a88 88 0 1 1 176 0 88 88 0 1 1 -176 0z" />
                  </svg>
								</button>
							</c:if>
							<!-- 사진 등록 모달창 -->
							<!-- 등록한 사진 경로처리 -->
						</div>

						<!-- 한줄소개글 -->
						<div class="profile-introduce">
							<div class="profile-content-wrap">
								<div class="profile-content">
									<p>
										<c:out value="${myPage.getUserComment()}" />
									</p>
								</div>
								<c:if
									test="${sessionScope.userNumber ==  myPage.getUserNumber()}">
									<div class="profile-modify-btn">
										<button type="button" class="modify-btn-ready">
											<img
												src="${pageContext.request.contextPath}/assets/img/myPage/icon_pen.png"
												alt="" />
										</button>
									</div>
								</c:if>
							</div>
							<div class="modify-box-wrap none">
								<!-- 소개글 저장 경로처리 -->
								<form id="write-form" action="#" method="" class="modify-box">
									<input type="text" name="introduce" placeholder="한 줄 소개글 작성"
										maxlength="30" />
									<button type="button" class="modify-btn-done">확인</button>
								</form>
							</div>
						</div>
					</div>
					<div class="profile-right">
						<!-- 스토리 구역으로 이동 -->
						<div>
							<a href="#storySection"><h2>
									<c:out value="${myPage.getStoryCnt()}" />
								</h2>
								<p>게시물</p></a>
						</div>
						<!-- 팔로워페이지로 이동 -->
						<div>
							<a
								href="${pageContext.request.contextPath}/follow/followerList.fo?userNumber=${myPage.getUserNumber()}"><h2>
									<c:out value="${myPage.getFollowerCnt()}" />
								</h2>
								<p>팔로워</p></a>
						</div>
						<!-- 팔로잉페이지로 이동 -->
						<div>
							<a
								href="${pageContext.request.contextPath}/follow/followingList.fo?userNumber=${myPage.getUserNumber()}&tab=following"><h2>
									<c:out value="${myPage.getFollowingCnt()}" />
								</h2>
								<p>팔로잉</p></a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<c:if
			test="${sessionScope.userNumber eq myPage.getUserNumber() && myPage.getGradeNumber()==100}">
			<section class="main2">
				<div class="apply-expert">
					<!-- 식고수 신청 페이지로 이동 -->
					<!-- 식고수인 경우 버튼없앰 -->
					<a
						href="${pageContext.request.contextPath}/gosuApply/gosuApply.ga?userNumber=${myPage.getUserNumber()}">식고수
						신청하기</a>
				</div>
			</section>
		</c:if>
		<!-- 마이스토리 목록 -->
		<section class="main3">
			<div class="main3--top" id="storySection">
				<h1>
					<c:out value="${myPage.getUserNickname()}" />
					님의 스토리
				</h1>
				<div class="write-story">
					<!-- 스토리쓰기 페이지로 이동 -->
					<c:if test="${sessionScope.userNumber ==  myPage.getUserNumber()}">
						<a
							href="${pageContext.request.contextPath}/app/story/storyWrite.jsp">글쓰기</a>
					</c:if>
				</div>
			</div>
			<!-- 스토리읽기 페이지로 이동 -->
			<div class="main3--bottom">
				<ul class="story-list-ul">
					<c:choose>
						<c:when test="${not empty myPage.getStoryFiles()}">
							<c:forEach var="myStory" items="${myPage.getStoryFiles()}">
								<li class="story-list"><a
									href="${pageContext.request.contextPath}/story/storyReadOk.st?storyNumber=${myStory.getStoryNumber()}">
										<div class="cover-div">
											<c:choose>
												<c:when test="${not empty myStory.getFileSystemName()}">
													<img
														src="${pageContext.request.contextPath}/storyUpload/${myStory.getFileSystemName()}"
														alt="" />
												</c:when>
												<c:otherwise>
													<img
														src="${pageContext.request.contextPath}/assets/img/myPage/logo.png" />
												</c:otherwise>
											</c:choose>
										</div>
										<p>${myStory.getStoryTitle()}</p>
								</a></li>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<div class="empty">등록한 스토리가 없습니다.</div>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</section>

		<!-- 식고수인경우 질문포스팅리스트띄워야함 -->
	<c:if test="${myPage.getGradeNumber()==500}">
			<section class="main3">
				<div class="main3--top">
					<h1>
						<c:out value="${myPage.getUserNickname()}" />
						님에게 온 질문들
					</h1>
				</div>
				<!-- 비동기로 답변완료/답변대기  -->
				<div class="answer-btn-group">
					<ul class="answer-btn-ul">
						<li class="answer-btn active" data-questionStatus=0>답변대기</li>
						<li class="answer-btn" data-questionStatus=1>답변완료</li>
					</ul>
					<ul>
						<!-- 식고수질문게시판으로 이동 -->
						<c:if test="${sessionScope.userNumber !=  myPage.getUserNumber()}">
							<!--  -->
							<li class="question-btn"><a
								href="${pageContext.request.contextPath}/question/questionWrite.qs?gosuNumber=${myPage.getGosuNumber()}">식고수에게
									물어보기</a></li>
						</c:if>
					</ul>
				</div>
				<!-- 질문읽기 페이지로 이동 -->
				<div class="main3--bottom">
					<ul class="story-list-ul question-list-ul">
						<%-- <c:choose>
							<c:when test="${not empty myPage.getQuestions()}">
								<c:forEach var="questions" items="${myPage.getQuestions()}">
									<li class="story-list question-list">
									<a href="${pageContext.request.contextPath}/question/questionReadOk.qs?questionNumber=${questions.getQuestionNumber()}">
											<div class="cover-div">
												<img
													src="${pageContext.request.contextPath}/questionUpload/${questions.getFileSystemName()}"
													alt="" />
											</div>
											<p>${questions.getQuestionTitle()}</p>
									</a></li>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<div class="empty">등록된 질문이 없습니다.</div>
							</c:otherwise>
						</c:choose> --%>
					</ul>
				</div>
			</section>
		</c:if>
		<!-- 회원탈퇴 페이지로 이동 -->
		<c:if test="${sessionScope.userNumber ==  myPage.getUserNumber()}">
			<section class="main2">
				<div class="withdraw">
					<a href="${pageContext.request.contextPath}/user/userDrop.us">회원
						탈퇴</a>
				</div>
			</section>
		</c:if>
	</div>
	<!-- 프로필사진모달창 -->
	<article class="photo-modal-box none">
		<div class="photo-modal">
			<h1>프로필사진</h1>
			<div class="photo-x-box">X</div>
			<!-- 사진등록경로처리-->
			<form method="post" enctype="multipart/form-data"
				class="profile-photo-form">
				<label for="profile-file"> <input type="file"
					id="profile-file" name="userFile" accept=".jpg, .jpeg, .png" /> <span>이미지
						등록 및 수정하기</span>
				</label>
			</form>
			<button class="basic-photo">기본 이미지로 변경하기</button>
		</div>
	</article>
	<!-- 등급보기 모달창 -->
	<article class="grade-modal-box none">
		<div class="grade-modal">
			<div class="grade-content">
				<div class="grade1">
					<h1>식집사</h1>
					<p>일반회원입니다.</p>
					<p>식고수 신청이 가능합니다.</p>
				</div>
				<div class="grade2">
					<h1>식고수</h1>
					<p>
						자신만의 질문게시판에서 질문과 답변으로 <br> 다른 식집사님들과 소통할 수 있습니다.
					</p>
				</div>
				<div class="grade-x-box">X</div>
			</div>
	</article>
	<jsp:include
		page="${pageContext.request.contextPath}/app/admin/footer.jsp" />
	<script>
		let gradeNumber = "${myPage.getGradeNumber()}";
		let contextPath = '${pageContext.request.contextPath}';
		let userNumber = "${myPage.getUserNumber()}";
		let checkFollow = "${checkFollow}";
	</script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/myPage.js"></script>
</body>
</html>