<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/header.css" />
<body>
	<header>
		<section class="header1">
			<div class="header1--top">
				<div class="header1-btn-group">
					<c:choose>
						<c:when test="${empty sessionScope.userNumber}">
							<!-- 로그인경로처리 -->
							<a href="${pageContext.request.contextPath}/user/login.us"
								class="header1-a header-login-btn">로그인</a>
							<!-- 회원가입경로처리 -->
							<a href="${pageContext.request.contextPath}/user/join.us"
								class="header1-a header-join-btn">회원가입</a>
						</c:when>
						<c:otherwise>
							<a href="${pageContext.request.contextPath}/user/logoutOk.us"
								class="header1-a header-logout-btn">로그아웃</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class="header1--bottom">
				<!-- 로고 누르면 홈으로 경로처리 -->
				<a href="${pageContext.request.contextPath}/main/mainOk.ma">
					<div class="header1-logo">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                			<path
								d="M384 312.7c-55.1 136.7-187.1 54-187.1 54-40.5 81.8-107.4 134.4-184.6 134.7-16.1 0-16.6-24.4 0-24.4 64.4-.3 120.5-42.7 157.2-110.1-41.1 15.9-118.6 27.9-161.6-82.2 109-44.9 159.1 11.2 178.3 45.5 9.9-24.4 17-50.9 21.6-79.7 0 0-139.7 21.9-149.5-98.1 119.1-47.9 152.6 76.7 152.6 76.7 1.6-16.7 3.3-52.6 3.3-53.4 0 0-106.3-73.7-38.1-165.2 124.6 43 61.4 162.4 61.4 162.4.5 1.6.5 23.8 0 33.4 0 0 45.2-89 136.4-57.5-4.2 134-141.9 106.4-141.9 106.4-4.4 27.4-11.2 53.4-20 77.5 0 0 83-91.8 172-20z" />
              			</svg>
					</div>
					<h1><span>볕 들 무렵</span></h1>
				</a>
			</div>
		</section>
		<section class="header2">
			<div class="header2-wrap">
				<div class="header2--left">
					<ul class="header2-menu-list-ul">
						<!-- 메뉴바 경로처리 -->
						<li class="header2-menu-list">
							<a href="${pageContext.request.contextPath}/main/mainOk.ma" class="header-active" id="header-home">홈</a></li>
						<li class="header2-menu-list">
							<a href="${pageContext.request.contextPath}/story/storyListOk.st" id="header-story">스토리</a></li>
						<li class="header2-menu-list">
							<a href="${pageContext.request.contextPath}/gosu/searchOk.gu" id="header-gosu">식고수에게 물어보기</a></li>
						<li class="header2-menu-list">
							<a href="${pageContext.request.contextPath}/app/algorithm/index.jsp" id="header-plant">반려식물 찾기</a></li>
						<li class="header2-menu-list">
							<a href="${pageContext.request.contextPath}/user/myPage.us" id="header-mypage">마이페이지</a></li>
					</ul>
				</div>
				<!-- 아이콘경로처리 -->
				<!-- 둘다 로그인되어있지 않으면 로그인페이지로 -->
				<div class="header2--right">
					<ul class="header2-btn-list-ul">
						<!-- 마이페이지로 -->
						<li class="header2-btn-list">
							<a href="${pageContext.request.contextPath}/user/myPage.us">
							<img src="${pageContext.request.contextPath}/assets/img/header/icon_user.png" alt="" />
							</a></li>
						<!-- 스토리 글쓰기 페이지로 -->
						<li class="header2-btn-list">
							<a href="${pageContext.request.contextPath}/app/story/storyWrite.jsp">
								<img src="${pageContext.request.contextPath}/assets/img/header/icon_pen.png" alt="" />
							</a></li>
					</ul>
				</div>
			</div>
		</section>
	</header>
</body>
=======
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
  <body>
    <header>
      <section class="header1">
        <div class="header1--top">
          <div class="header1-btn-group">
            <!-- 로그인경로처리 -->
            <a href="${pageContext.request.contextPath}/user/login.us" class="header1-a header-login-btn">로그인</a>
            <!-- 회원가입경로처리 -->
            <a href="${pageContext.request.contextPath}/user/join.us" class="header1-a header-join-btn">회원가입</a>
            <a href="${pageContext.request.contextPath}/user/logoutOk.us" class="header1-a header-logout-btn">로그아웃</a>
          </div>
        </div>
        <div class="header1--bottom">
          <!-- 로고 누르면 홈으로 경로처리 -->
          <a href="">
            <div class="header1-logo">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                <path
                  d="M384 312.7c-55.1 136.7-187.1 54-187.1 54-40.5 81.8-107.4 134.4-184.6 134.7-16.1 0-16.6-24.4 0-24.4 64.4-.3 120.5-42.7 157.2-110.1-41.1 15.9-118.6 27.9-161.6-82.2 109-44.9 159.1 11.2 178.3 45.5 9.9-24.4 17-50.9 21.6-79.7 0 0-139.7 21.9-149.5-98.1 119.1-47.9 152.6 76.7 152.6 76.7 1.6-16.7 3.3-52.6 3.3-53.4 0 0-106.3-73.7-38.1-165.2 124.6 43 61.4 162.4 61.4 162.4.5 1.6.5 23.8 0 33.4 0 0 45.2-89 136.4-57.5-4.2 134-141.9 106.4-141.9 106.4-4.4 27.4-11.2 53.4-20 77.5 0 0 83-91.8 172-20z"
                />
              </svg>
            </div>
            <h1><span>볕 들 무렵</span></h1>
          </a>
        </div>
      </section>

      <section class="header2">
        <div class="header2--left">
          <ul class="header2-menu-list-ul">
            <!-- 메뉴바 경로처리 -->
            <li class="header2-menu-list"><a href="${pageContext.request.contextPath}/app/main/main.jsp" class="header-active">홈</a></li>
            <li class="header2-menu-list"><a href="${pageContext.request.contextPath}/app/story/storyList.jsp"> 스토리</a></li>
            <li class="header2-menu-list"><a href="${pageContext.request.contextPath}/app/algorithm/index.jsp"> 반려식물 찾기</a></li>
            <li class="header2-menu-list"><a href="${pageContext.request.contextPath}/user/myPage.us"> 마이페이지</a></li>
          </ul>
        </div>
        <!-- 아이콘경로처리 -->
        <!-- 둘다 로그인되어있지 않으면 로그인페이지로 -->
        <div class="header2--right">
          <ul class="header2-btn-list-ul">
            <!-- 마이페이지로 -->
            <li class="header2-btn-list">
              <a href="${pageContext.request.contextPath}/user/myPage.us"><img src="${pageContext.request.contextPath}/assets/img/header/icon_user.png" alt="" /></a>
            </li>
            <!-- 스토리 글쓰기 페이지로 -->
            <li class="header2-btn-list">
              <a href="${pageContext.request.contextPath}/app/story/storyWrite.jsp"><img src="${pageContext.request.contextPath}/assets/img/header/icon_pen.png" alt="" /></a>
            </li>
          </ul>
        </div>
      </section>
    </header>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/header.js"></script>
  </body>
</html>
