<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" conetent="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ecommerce Responsive full website</title>
<!-- CSS-link -->


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	scroll-behavior: smooth;
	font-family: 'Jost', sans-serif;
	list-style: none;
	text-decoration: none;
}

header {
	position: fixed;
	width: 100%;
	top: 0;
	right: 0;
	z-index: 1000;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 20px 10%;
}

.logo img {
	max-width: 12opx;
	height: auto;
}

.navmenu {
	display: flex;
}

.navmenu a {
	color: #2C2C2C;
	font-size: 16px;
	text-transform: capitalize;
	padding: 10px 20px;
	font-weight: 400;
	transition: all .42S ease;
}

.navmenu a:hover {
	color: #EE1CA7;
}

.nav-icon {
	display: flex;
	align-items: center;
}

.nav-icon i {
	margin-right: 20px;
	color: #2C2C2C;
	font-size: 25px;
	font-weight: 400;
	transition: all .42s ease;
}

.nav-icon i:hover {
	transform: scale(1.1);
	color: red;
}

#menu-icon {
	font-size: 35px;
	color: #2C2C2C;
	z-index: 10001;
	cursor: pointer;
}

section {
	padding: 7% 10%;
}

.main-home {
	width: 100%;
	height: 100vh;
	background-image: url(image/banner-3.png);
	background-position: center;
	background-size: cover;
	display: grid;
	grid-template-columns: repeat(1, 1fr);
	align-items: center;
}

.main-text h5 {
	color: #EE1C47;
	font-size: 16px;
	text-transform: capitalize;
	font-weight: 500;
}

.main-text h1 {
	color: #000;
	font-size: 65px;
	text-transform: capitalize;
	line-height: 1.1;
	font-weight: 600;
	margin: 6px 0 10px;
}

.main-text p {
	color: #333c56;
	font-size: 20px;
	font-style: italic;
	margin-bottom: 20px;
}

.main-btn {
	display: inline-block;
	color: #111;
	font-size: 16px;
	font-weight: 500;
	text-transform: capitalize;
	border: 2px solid #111;
	padding: 12px 25px;
	transition: all .42s ease;
}

.main-btn:hover {
	background-color: #000;
	color: #fff;
}

.main-btn i {
	vertical-align: middle;
}

.down-arrow {
	position: absolute;
	top: 85%;
	right: 11%;
}

.down i {
	font-size: 30px;
	color: #2c2c2c;
	border: 2px solid #2c2c2c;
	border-radius: 50px;
	padding: 12px 12px;
}

.down i:hover {
	background-color: #2c2c2c;
	color: #fff;
	transition: all .42s ease;
}

header.sticky {
	background: #fff;
	padding: 20px 10%;
	box-shadow: 0px 0px 10px rgb(0 0 0/ 10%);
}

/* trending - section - css -> our trending */
.center-text h2 {
	color: #111;
	font-size: 28px;
	text-transform: capitalize;
	text-align: center;
	margin-bottom: 30px;
}

.center-text span {
	color: red;
}

.products {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(260px, auto));
	gap: 2rem;
}

/* 상품 행 관련 css 코드 */
.row {
	position: relative;
	transition: all .40s;
}

/* 상품 이미지  */
.row img {
	width: 100%;
	height: auto;
	transition: all .40s;
}

.row img:hover {
	transform: scale(0.9);
}

/* 상품 인기도 */
.product-text h5 {
	position: absolute;
	top: 13px;
	left: 13px;
	color: #fff;
	font-size: 12px;
	font-weight: 500;
	text-transform: uppercase;
	background-color: #27b737;
	padding: 3px 10px;
	border-radius: 2px;
}

/* 상품 하트 표시 */
.heart-icon {
	position: absolute;
	right: 0;
	font-size: 20px;
}

.heart-icon:hover {
	color: red;
}

/* 평점 */
.ratting i {
	color: #ff8c00;
	font-size: 18px;
}

.price h4 {
	color: black;
	font-size: 16px;
	text-transform: capitalize;
	font-weight: 400;
}

.price p {
	color: #151515;
	font-size: 14px;
	font-weight: 600;
}

/* 맨 아래 회원 후기 */
.client-reviews {
	background-color: #f3f4f6;
}

.reviews {
	text-align: center;
}

.reviews h3 {
	color: #111;
	font-size: 25px;
	text-transform: capitalize;
	text-align: center;
	font-weight: 700;
}

.reviews img {
	width: 100px;
	height: auto;
	border-radius: 50px;
	margin: 10px 0;
}

.review p {
	color: #707070;
	font-size: 16px;
	font-weight: 400;
	line-height: 25px;
	margin-bottom: 10px;
}

.reviews h2 {
	font-size: 22px;
	color: #000;
	font-weight: 400;
	text-transform: capitalize;
	margin-bottom: 2px;
}

.up-center-text h2 {
	text-align: center;
	color: #111;
	font-size: 25px;
	text-transform: capitalize;
	font-weight: 700;
	margin-bottom: 30px;
}

.cart img {
	width: 380px;
	height: auto;
	border-radius: 5px;
}

.update-cart {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(380px, auto));
	gap: 1rem;
}

.cart h5 {
	color: #636872;
	font-size: 14px;
	text-transform: capitalize;
	font-weight: 500;
}

.cart h4 {
	color: #111;
	font-size: 18px;
	font-weight: 600;
}

.cart p {
	color: #707070;
	font-size: 15px;
	max-width: 380px;
	line-height: 25px;
	margin-bottom: 12px;
}

.cart h6 {
	color: #151515;
	font-size: 14px;
	font-weight: 500;
}

.contact {
	background-color: #f3f4f6;
}

.contact-info {
	display: grid;
	grid-template-columns: repeat(auto-fit, minmax(160px, auto));
	gap: 3rem;
}

/* responsive-css */
@media ( max-width : 890px) {
	header {
		padding: 20px 3%;
		transition: .4s;
	}
}

@media ( max-width : 630px) {
	.main-text h1 {
		font-size: 50px;
		transition: .4s;
	}
	.main-text p {
		font-size: 18px;
		transition: .4s;
	}
	.main-btn {
		font-size: 10px 20px;
		transition: .4s;
	}
}

/* 스타일 끝 */
</style>
</head>
<body>

	<header>

		<a href="#" class="logo"><img src="image/logo.png" alt=""></a>
		<ul class="navmenu">
			<li><a href="login">login</a></li>
			<li><a href="join">register</a></li>
			<li><a href="#">products</a></li>
			<li><a href="#">page</a></li>
			<li><a href="#">Docs</a></li>
		</ul>
		<div class="nav-icon">
			<a href="#"></a><i class='bx bx-search'></i> 
			<a href="mypage"></a><i class='bx bx-user'></i> 
			<a href="#"></a><i class='bx bx-cart'></i>

			<div class="bx bx-menu" id="menu-icon"></div>
		</div>

	</header>

	<section class="main-home">
		<div class="main-text">
			<h5>Winter Collection</h5>
			<h1>
				New Winter <br> Collection 2022
			</h1>
			<p>There's Nothing like Trend</p>

			<a href="#" class="main-btn"> Shop Now <i
				class='bx bx-right-arrow-alt'></i>
			</a>
		</div>

		<div class="down-arrow">
			<a href="#trending" class="down"> <i class='bx bx-down-arrow-alt'></i>
			</a>
		</div>
	</section>

	<!-- trending products-section -->
	<section class="trending product" id="trending">
		<div class="center-text">
			<h2>
				Our Trending <span> Products </span>
			</h2>
		</div>
		<div class="products">
			<!-- 첫 번째 상품 -->
			<div class="row">
				<img src="image/1.jpg" alt="">
				<div class="product-text">
					<h5>Sale</h5>
				</div>

				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Half Running Set</h4>
					<p>$99 - $129</p>
				</div>
			</div>
			<!-- 2번쨰 상품 -->
			<div class="row">
				<img src="image/2.jpg" alt="">
				<div class="product-text">
					<h5>New</h5>
				</div>

				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Formal Men Lowers</h4>
					<p>$99 - $129</p>
				</div>
			</div>
			<!-- 세번째 상품 -->
			<div class="row">
				<img src="image/3.jpg" alt="">


				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Half Running Suit</h4>
					<p>$99 - $129</p>
				</div>
			</div>
			<!-- 4번 째 상품 -->
			<div class="row">
				<img src="image/4.jpg" alt="">
				<div class="product-text">
					<h5>Hot</h5>
				</div>

				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Half Fancy Laday Dress</h4>
					<p>$99 - $129</p>
				</div>
			</div>
			<!-- 다섯 번째 상품 -->

			<div class="row">
				<img src="image/5.jpg" alt="">


				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Flix Flox Jeans</h4>
					<p>$99 - $129</p>
				</div>
			</div>
			<!-- 여섯 번째 상품 -->
			<div class="row">
				<img src="image/6.jpg" alt="">
				<div class="product-text">
					<h5>Hot</h5>
				</div>

				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Fancy Salwar Suits</h4>
					<p>$99 - $129</p>
				</div>
			</div>

			<!-- 일곱 번째 상품 -->
			<div class="row">
				<img src="image/7.jpg" alt="">
				<div class="product-text">
					<h5>Sale</h5>
				</div>

				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Printed Straight Kurta</h4>
					<p>$99 - $129</p>
				</div>
			</div>

			<!-- 여덟번 째 상품 -->
			<div class="row">
				<img src="image/8.jpg" alt="">
				<div class="product-text">
					<h5>Sale</h5>
				</div>

				<div class="heart-icon">
					<i class='bx bx-heart'></i>
				</div>
				<div class="ratting">
					<i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bx-star'></i> <i class='bx bx-star'></i> <i
						class='bx bxs-star-half'></i>
				</div>

				<div class="price">
					<h4>Collot Full Dress</h4>
					<p>$99 - $129</p>
				</div>
			</div>



		</div>


	</section>

	<!-- 회원 리뷰 section -->
	<section class="Client-reivews">
		<div class="reviews">

			<h3>Client Reviews</h3>
			<img src="image/team-1.jpg" alt="">
			<p>맨투맨 느므느므 예쁨 쿠폰 다운받고 적립금 알차게 써서 적당한 가격에 구매했어요 리뷰에 세탁 한 번 돌렸더니 목
				늘어났단 말이 많아서 저는 손빨래 하겠습니다 ,,, 날이ㅡ춥기도하고 부들거리는 느낌을 좋아해서 기모 추가했는데 하길 잘 한
				것 같아요 검은색 맨투맨이라 칙칙할 수 있지만 가운데 자수가 너무 예뻐서 아주 굿이고 어떻게 코디해도 다 잘 어울려요 근데
				기모치곤 살짝 얇은 편인 것 같긴해요 맨살이나 반팔에 입으면 지금 날씨에 쌀쌀 or 추움 그래서 어제 히트택이랑 같이
				입었네요 아무튼 너무 예쁨 여기 브랜드 다 이쁜 듯</p>

			<h2>Mark Jevenue</h2>
			<p>Ceo of Addle</p>


		</div>
	</section>

	<section class="Update-news">
		<div class="up-center-text">
			<h2>New Updates</h2>
		</div>

		<div class="update-cart">
			<div class="cart">
				<img src="image/bl-1.png" alt="">
				<h5>26 jan 2022</h5>
				<h4>Let's Start bring sale on this Summer Vacation</h4>
				<p>일부 상품의 경우 주식회사 무신사는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
					책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다. 당사는 고객님이 현금 결제한 금액에
					대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.</p>
				<h6>Continue Reading...</h6>
			</div>

			<div class="cart">
				<img src="image/bl-2.png" alt="">
				<h5>26 jan 2022</h5>
				<h4>Let's Start bring sale on this Summer Vacation</h4>
				<p>일부 상품의 경우 주식회사 무신사는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
					책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다. 당사는 고객님이 현금 결제한 금액에
					대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.</p>
				<h6>Continue Reading...</h6>
			</div>

			<div class="cart">
				<img src="image/bl-3.png" alt="">
				<h5>26 jan 2022</h5>
				<h4>Let's Start bring sale on this Summer Vacation</h4>
				<p>일부 상품의 경우 주식회사 무신사는 통신판매의 당사자가 아닌 통신판매중개자로서 상품, 상품정보, 거래에 대한
					책임이 제한될 수 있으므로, 각 상품 페이지에서 구체적인 내용을 확인하시기 바랍니다. 당사는 고객님이 현금 결제한 금액에
					대해 우리은행과 채무지급보증 계약을 체결하여 안전거래를 보장하고 있습니다.</p>
				<h6>Continue Reading...</h6>
			</div>


		</div>
	</section>

	<!-- Contact section -> 담당자  전화번호, 이메일 -->
	<section class="contact">
		<div class="contact-info">
			<div class="first-info">
				<img src="image/logo.png" alt="">

				<p>
					3245 Grant Street Longview, <br> TX United Kingdom 765378
				</p>
				<p>01049096453</p>
				<p>deer2073@naver.com</p>

				<div class="social-icon">
					<a href="#"><i class='bx bxl-facebook'></i></a> <a href="#"><i
						class='bx bxl-twitter'></i></a> <a href="#"><i
						class='bx bxl-instagram'></i></a> <a href="#"><i
						class='bx bxl-youtube'></i></a> <a href="#"><i
						class='bx bxl-linkedin'></i></a>

				</div>
			</div>

			<div class="second-info">
				<h4>Support</h4>
				<p>Contact us</p>
				<p>About page</p>
				<p>Size Guide</p>
				<p>Shopping & Resturns</p>
				<p>Privacy</p>
			</div>

			<div class="thrid-info">
				<h4>Shop</h4>
				<p>Men's Shopping</p>
				<p>Women's Shopping</p>
				<p>Kid's Shopping</p>
				<p>Furniture</p>
				<p>Discount</p>
			</div>


			<div class="fourth-info">
				<h4>Company</h4>
				<p>About</p>
				<p>Blog</p>
				<p>Affiliate</p>
				<p>Login</p>
			</div>

			<div class="five">
				<h4>Subscribe</h4>
				<p>Receive updates, Hot Deals, Discounts Sent Sent Straight in
					your Inbox Daily</p>
				<p>Lorem Ipsum Dolor Sit Amet Consectetur Adipisicing Elit. Eum,
					Debitis.</p>
				<p>Receive Updates, Hot deals, Discounts Sent Straight In Your
					Inbox Daily</p>

			</div>



		</div>
	</section>


	<script>
		const header = document.querySelector("header");

		window.addEventListener("scroll", function() {
			header.classList.toggle("sticky", this.window.scrollY > 0);
		})
	</script>
</body>
</html>

<!-- ! 치고 enter치면 자동적으로 나옴 -->