<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>비밀번호 재설정 | 볕 들 무렵</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/RePw.css">
  <style>
    @font-face {
      font-family: SpoqaHanSans-Regular;
      src: url(/assets/font/SpoqaHanSansRegular.woff2);
    }

    @font-face {
      font-family: SpoqaHanSans-Bold;
      src: url(/assets/font/SpoqaHanSansBold.woff2);
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="nav">
      <div class="menu">
        <a href="/main/mainOk.ma">홈</a>
        <a href="/user/join.us">회원가입</a>
      </div>
    </div>
    <div class="main-container">
      <div class="mem-rePw">
        <div class="logo">
          <svg xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 384 512"><!--! Font Awesome Pro 6.3.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
            <path
              d="M384 312.7c-55.1 136.7-187.1 54-187.1 54-40.5 81.8-107.4 134.4-184.6 134.7-16.1 0-16.6-24.4 0-24.4 64.4-.3 120.5-42.7 157.2-110.1-41.1 15.9-118.6 27.9-161.6-82.2 109-44.9 159.1 11.2 178.3 45.5 9.9-24.4 17-50.9 21.6-79.7 0 0-139.7 21.9-149.5-98.1 119.1-47.9 152.6 76.7 152.6 76.7 1.6-16.7 3.3-52.6 3.3-53.4 0 0-106.3-73.7-38.1-165.2 124.6 43 61.4 162.4 61.4 162.4.5 1.6.5 23.8 0 33.4 0 0 45.2-89 136.4-57.5-4.2 134-141.9 106.4-141.9 106.4-4.4 27.4-11.2 53.4-20 77.5 0 0 83-91.8 172-20z" />
          </svg>
          <div class="text-logo">
            볕 들 무렵
          </div>
          <div class="rePw-logo"> 비밀번호 재설정</div>
        </div>
      </div>

      <form action="${pageContext.request.contextPath}/find/findPwOk.fp" method="POST">
      <div class="whole-container">
        <div class="question-container">
          <h2>비밀번호 찾기</h2>
          <div class="question">
          <div class="id-input">
          	<div class="title1">아이디</div><br>
          	<input type="text" id="userId" name="userId" required>
          	</div>
            <div class="title1">비밀번호 찾기 질문</div> <br>
            <select name="findQuestionNumber" id="select" required>
              <!-- <option value="-1" selected>--선택--</option> -->
              <option value="1">가장 좋아하는 색깔은?</option>
              <option value="2">가장 좋아하는 계절은?</option>
              <option value="3">가장 소중한 것은?</option>
            </select>
          </div>
          <div class="answer">
            <div class="title1">비밀번호 찾기 답변</div> <br>
            <input type="text" name="findPasswordAnswer" required>
          </div>
          <div class="alert">※회원가입 시 선택한 '비밀번호 찾기 질문'에 대한 답변을 입력하세요</div>

          <button type="submit" value="확인" class="check-button">확인</button>
        </div>


        <div class="change-container">
          <h2>비밀번호 변경</h2>
          <div class="newPw">
            <div class="title-container1">
              <div class="title2">
                새로운 비밀번호</div>
              <input type="password" name="newPassword" required>
              <div class="alert">※ 공백 없는 영문숫자 포함 8-15자</div>
            </div>
            <div class="title-container2">
              <div class="title3">비밀번호 확인</div>
              <input type="password" name="newPassword" class="inputPw" required>
            </div>
          </div>

          <button type="submit" value="비밀번호 변경" class="change-button">비밀번호 변경</button>
        </div>
      </div>
    </form>
    </div>

  </div>

  </div>
	<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
  	<script src="${pageContext.request.contextPath}/assets/js/RePw.js"></script>
</body>

</html>