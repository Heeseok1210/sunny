<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>스토리 | 볕 들 무렵</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/storyList.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet" />
</head>
<body>
<jsp:include
   page="${pageContext.request.contextPath}/app/header/header.jsp"/>
	<div class="container">
		<article class="bntslide">
			<div class="holder">
				<div class="loopslider" data-pagertype="bullets">
					<ul class="swiper-wrapper">
						<li class="swiper-slide"><a
							href="${pageContext.request.contextPath}/app/main/main.jsp">
								<div class="wraphover">
									<img
										src="https://www.shouse.garden/data/banner/220729_024730_734200p.jpg"
										alt="" />
								</div>
						</a></li>
					</ul>
				</div>
			</div>
		</article>
		<h3 class="subtit">볕 들 스토리들</h3>

		<article class="holder2">
			<div class="storyList sl">
    <ul class="listUl">
        <c:choose>
            <c:when test="${not empty storyList}">
                <c:forEach var="story" items="${storyList}">
                    <li class="listLi">
                        <div class="top tBox">
                            <a href="${pageContext.request.contextPath}/app/user/myPage.jsp  <%-- /user/myPageOk.us?=userNumber=${story.getUserNumber()} --%>">
                                <div class="p1 proimg">
                                    <img src="${story.getUserProfileImage()}" alt="">
                                </div>
                                <p class="p1 profile">${story.getUserNickname()}</p>
                            </a>
                            <button type="button" id="follow-button" onclick="toggleFollow(this)" class="p1 follow dir">팔로우</button>
                        </div>
                        <a href="${pageContext.request.contextPath}/story/storyReadOk.st?storyNumber=${story.getStoryNumber()}">
                            <div class="img-container">
                                <div class="coverimg">
                                    <img src="${pageContext.request.contextPath}/storyUpload/${story.getFileSystemName()}" alt="">
                                </div>
                            </div>
                            <p class="imgtilte">${story.getStoryTitle()}</p>
                        </a>
                    </li>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="5" align="center">등록된 스토리가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </ul>
</div>
</article>
</div>

			<div class="pagination">
				<ul>
					<c:if test="${prev}">
						<li><a
							href="${pageContext.request.contextPath}/story/storyListOk.st?page=${startPage -1}"
							class="prev">&lt;</a></li>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${!(i==page)}">
								<li><a
									href="${pageContext.request.contextPath}/story/storyListOk.st?page=${i}">
										<c:out value="${i}" />
								</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="#" class="active"> <c:out value="${i}" />
								</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${next}">
						<li><a
							href="${pageContext.request.contextPath}/story/storyListOk.st?page=${endPage +1}"
							class="next">&gt;</a></li>
					</c:if>
				</ul>
			</div>
		</article>
		<script
			src="${pageContext.request.contextPath}/assets/js/storyList.js"></script>
		<jsp:include
   page="${pageContext.request.contextPath}/app/admin/footer.jsp"/>
</body>
</html>