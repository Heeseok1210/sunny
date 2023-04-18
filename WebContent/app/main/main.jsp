<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>메인페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
</head>
<body>
	<main>
		<section id="slide-bar" style="text-align: center;">
			<div class="outer"
				style="width: 1200px; height: 600px; margin-top: 50px;">
				<div class="slidebox">
					<input type="radio" name="slide" id="slide01" checked> <input
						type="radio" name="slide" id="slide02"> <input
						type="radio" name="slide" id="slide03"> <input
						type="radio" name="slide" id="slide04">
					<ul class="slidelist">
						<li class="slideitem">
							<div>
								<label for="slide04" class="left"></label> <label for="slide02"
									class="right"> </label> <a><img
									src="../../assets/img/메인페이지 디자인 배너.png"></a>
							</div>
						</li>
						<li class="slideitem">
							<div>
								<label for="slide01" class="left"></label> <label for="slide03"
									class="right"></label> <a><img
									src="../../assets/img/반려식물 찾기 테스트 배너.png"></a>
							</div>
						</li>
						<li class="slideitem">
							<div>
								<label for="slide02" class="left"></label> <label for="slide04"
									class="right"></label> <a><img
									src="../../assets/img/임시.png" style="width: 1200px;"></a>
							</div>
						</li>
						<li class="slideitem">
							<div>
								<label for="slide03" class="left"></label> <label for="slide01"
									class="right"></label> <a><img
									src="https://honestflower.kr/_next/image?url=https%3A%2F%2Ffile.honestflower.kr%2Fmedia%2Fimages%2Fbannerimage%2F1679376397%2F1175.webp&w=1920&q=100"
									style="height: 500px;"></a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</section>
		<div class="container">
			<h3 class="subtit" style="margin-top: 20px;">
				스토리 <a href="/스토리보드 "> <span class="span1">더보기 ></span></a>
			</h3>
			<article class="holder2">
				<div class="stroyList sl">
					<ul class="listUl">
						<li class="listLi">
							<div class="top tBox">
								<a href="#"><div class="p1 proimg"></div>
									<p class="p1 profile">닉넴닉넴</p></a>
								<button type="button" id="follow-button"
									onclick="toggleFollow(this)" class="p1 follow dir">
									팔로우</button>
							</div> <a href="">
								<div class="img-container">
									<div class="coverimg"></div>
								</div>
								<p class="imgtilte">제목제목</p>
						</a>
						</li>
						<li class="listLi">
							<div class="top tBox">
								<a href="#"><div class="p1 proimg"></div>
									<p class="p1 profile">닉넴닉넴</p></a>
								<button type="button" id="follow-button"
									onclick="toggleFollow(this)" class="p1 follow dir">
									팔로우</button>
							</div> <a href="">
								<div class="img-container">
									<div class="coverimg"></div>
								</div>
								<p class="imgtilte">제목제목</p>
						</a>
						</li>
						<li class="listLi">
							<div class="top tBox">
								<a href="#"><div class="p1 proimg"></div>
									<p class="p1 profile">닉넴닉넴</p></a>
								<button type="button" id="follow-button"
									onclick="toggleFollow(this)" class="p1 follow dir">
									팔로우</button>
							</div> <a href="#">
								<div class="img-container">
									<div class="coverimg"></div>
								</div>
								<p class="imgtilte">제목제목</p>
						</a>
						</li>
					</ul>
					<ul class="listUl">
						<li class="listLi">
							<div class="top tBox">
								<a href="#"><div class="p1 proimg"></div>
									<p class="p1 profile">닉넴닉넴</p></a>
								<button type="button" id="follow-button"
									onclick="toggleFollow(this)" class="p1 follow dir">
									팔로우</button>
							</div> <a href="">
								<div class="img-container">
									<div class="coverimg"></div>
								</div>
								<p class="imgtilte">제목제목</p>
						</a>
						</li>
						<li class="listLi">
							<div class="top tBox">
								<a href="#"><div class="p1 proimg"></div>
									<p class="p1 profile">닉넴닉넴</p></a>
								<button type="button" id="follow-button"
									onclick="toggleFollow(this)" class="p1 follow dir">
									팔로우</button>
							</div> <a href="">
								<div class="img-container">
									<div class="coverimg"></div>
								</div>
								<p class="imgtilte">제목제목</p>
						</a>
						</li>
						<li class="listLi">
							<div class="top tBox">
								<a href="#"><div class="p1 proimg"></div>
									<p class="p1 profile">닉넴닉넴</p></a>
								<button type="button" id="follow-button"
									onclick="toggleFollow(this)" class="p1 follow dir">
									팔로우</button>
							</div> <a href="#">
								<div class="img-container">
									<div class="coverimg"></div>
								</div>
								<p class="imgtilte">제목제목</p>
						</a>
						</li>
					</ul>
				</div>
			</article>
		</div>
		<section>
			<div class="question">
				<div class="question-title">식고수에게 질문하기</div>
				<section class="question-container">
					<div class="wrapper">
						<div class="img-area">
							<div class="inner-area">
								<img src="" alt="">
							</div>
						</div>
						<div class="icon arrow">
							<i class="fas fa-arrow-left"></i>
						</div>
						<div class="icon dots">
							<i class="fas fa-ellipsis-v"></i>
						</div>
						<div class="name">식고수 1</div>
						<div class="about">야생화/허브/씨앗</div>
						<div class="social-icons">
							<a href="#" class="fb"> <img
								src="../../assets/img/facebook.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /> <i class="fab fa-facebook-f">
							</i></a> <a href="#" class="twitter"> <img
								src="../../assets/img/twitter.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-twitter"></i></a> <a
								href="#" class="insta"> <img
								src="../../assets/img/instagram.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-instagram"></i></a>
							<a href="#" class="yt"> <img
								src="../../assets/img/youtube.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-youtube"></i></a>
						</div>
						<div class="buttons">
							<button>질문</button>
							<button>팔로우</button>
						</div>
					</div>
					<div class="wrapper">
						<div class="img-area">
							<div class="inner-area">
								<img src="" alt="">
							</div>
						</div>
						<div class="icon arrow">
							<i class="fas fa-arrow-left"> </i>
						</div>
						<div class="icon dots">
							<i class="fas fa-ellipsis-v"></i>
						</div>
						<div class="name">식고수 2</div>
						<div class="about">공기정화/관엽식물</div>
						<div class="social-icons">
							<a href="#" class="fb"> <img
								src="../../assets/img/facebook.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-facebook-f"></i></a>
							<a href="#" class="twitter"><img
								src="../../assets/img/twitter.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-twitter"></i></a> <a
								href="#" class="insta"> <img
								src="../../assets/img/instagram.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-instagram"></i></a>
							<a href="#" class="yt"><img
								src="../../assets/img/youtube.png"
								onMouseOver="this.style.opacity='.6'; this.style.filter='alpha(opacity=60)'"
								onMouseOut="this.style.opacity='1.0'; this.style.filter='alpha(opacity=100)'"
								style="border-radius: 120%;" /><i class="fab fa-youtube"></i></a>
						</div>
						<div class="buttons">
							<button>질문</button>
							<button>팔로우</button>
						</div>
					</div>
					</article>
				</section>
		</section>
		<section class="findmyPlant">
			<div class="findMyPlant-title ">
				<div class="holder">
					<h3 class="find1">반려 식물 찾기</h3>
					<div class="asd">
						<div>
							<ul>
								<li><img
									src="https://www.shouse.garden/data/tour/221220_115619_png"
									class="img1"></li>
								<li><img
									src="https://www.shouse.garden/data/tour/221220_115508_png"
									class="img2"></li>
								<li><img
									src="https://www.shouse.garden/data/tour/221220_115556_png"
									class="img3"></li>
								<li><img
									src="https://www.shouse.garden/data/tour/221220_115619_png"
									class="img4"></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>
</html>