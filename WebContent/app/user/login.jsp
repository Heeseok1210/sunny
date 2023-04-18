<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>로그인 | 볕 들 무렵</title>
  <link rel="stylesheet" href="/assets/css/login.css">
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
      <div class="holder">
        <!-- <div class="icon">
          <div class="playstore">
            <img src="https://www.shouse.garden/images/common/u_gp.png" alt="">
          </div>
          <div class="appstore">
            <img src="https://www.shouse.garden/images/common/u_ap.png" alt="">
          </div>
          <div class="insta">
            <img src="https://www.shouse.garden/images/common/u_in.png" alt="">
          </div>
          <div class="kakao">
            <img src="https://www.shouse.garden/images/common/u_kc.png" alt="">
          </div>
          <div class="facebook">
            <img src="https://www.shouse.garden/images/common/u_fb.png" alt="">
          </div>
          <div class="youtube">
            <img src="https://www.shouse.garden/images/common/u_yt.png" alt="">
          </div>
        </div> -->

        <div class="menu">
          <a href="">홈</a>
          <a href="/user/join.us">회원가입</a>
        </div>
      </div>
    </div>

    <div class="main">
      <div class="memlogin">
        <div class="logo">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.3.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M384 312.7c-55.1 136.7-187.1 54-187.1 54-40.5 81.8-107.4 134.4-184.6 134.7-16.1 0-16.6-24.4 0-24.4 64.4-.3 120.5-42.7 157.2-110.1-41.1 15.9-118.6 27.9-161.6-82.2 109-44.9 159.1 11.2 178.3 45.5 9.9-24.4 17-50.9 21.6-79.7 0 0-139.7 21.9-149.5-98.1 119.1-47.9 152.6 76.7 152.6 76.7 1.6-16.7 3.3-52.6 3.3-53.4 0 0-106.3-73.7-38.1-165.2 124.6 43 61.4 162.4 61.4 162.4.5 1.6.5 23.8 0 33.4 0 0 45.2-89 136.4-57.5-4.2 134-141.9 106.4-141.9 106.4-4.4 27.4-11.2 53.4-20 77.5 0 0 83-91.8 172-20z"/></svg>
          <div class="text-logo">
            볕 들 무렵
          </div>
        </div>
        <form action="${pageContext.request.contextPath}/user/loginOk.us" method="POST">
        <div class="input">
          <input type="text" id="id" name="userId" placeholder="아이디" minlength="3" maxlength="10" required/>
          <br>
          <input type="password" id="pw" name="userPassword" placeholder="비밀번호" minlength="3" maxlength="15" required>
        </div>
        <button type="submit" value="로그인" class="login1">로그인</button>
        <div class="menu2">
          <div class="check">
            <input type="checkbox" name="아이디 저장">
            <label for="id-save">아이디 저장</label>
          </div>
          <div class="button2">
            <a href="/find/findPw.fp">비밀번호 재설정</a>
            <a href="/user/join.us">회원가입</a>
          </div>
        </div>
      </form>
      </div>

      <div class="copy">
        <p>Copyright©볕 들 무렵 ALL RIGHTS RESERVED.</p>
      </div>
    </div>
  </div>
    <script src="https://code.jquery.com/jquery-3.6.4.js"></script>
  	<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
</body>

</html>