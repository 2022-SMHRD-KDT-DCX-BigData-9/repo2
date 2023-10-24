<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--this is a test-->
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

/* 스타일 1끝 2 시작 */
.product_view {
	position: relative;
	padding: 0 0 0 395px;
	width: 962px;
	box-sizing: border-box;
	top: 200px;
	display: flex;
	justify-content: center;
}

.product_view .img {
	display: flex;
	justify-content: center;
	position: absolute;
	left: 0;
	top: 0;
}

.product_view .img li:after {
	content: "";
	display: block;
	clear: both;
}

.product_view .img li {
	float: left;
	padding: 10px 10px 3px 3px;
}

.product_view .img li.on img {
	border-color: white;
}

.product_view .img>img {
	width: 368px;
	height: 370px;
	border: 1px solid blue;
}

.product_view .img li img {
	width: 68px;
	height: 68px;
	border: 1px solid blue;
}

.product_view h2 {
	margin: 0 0 15px;
	padding: 0 0 20px;
	border-bottom: 1px solid #333;
	font-size: 24px;
	color: #232323;
	line-height: 26px;
}

.btns {
	position: relative;
	left: 430px;
	top: 200px;
}

.product_view table th, .product_view table td {
	padding: 12px 0;
	font-size: 15px;
	color: #444;
	text-align: left;
}

.product_view table td.price {
	font-size: 22px;
}

.product_view table td.total {
	font-size: 19px;
	color: #0a56a9;
}

.product_view table td.total b {
	font-size: 22px;
}

.product_view table .length {
	position: relative;
	width: 71px;
	height: 32px;
	border: 1px solid #c6c6c6
}

.product_view table .length input {
	width: 44px;
	height: 32px;
	border: none;
	border-right: 1px solid #c6c6c6;
	text-align: center;
}

.product_view table .length a {
	overflow: hidden;
	position: absolute;
	right: 0;
	width: 26px;
	height: 16px;
	color: transparent;
}

.product_view table .length a:nth-of-type(2) {
	top: 0;
}

.product_view table .length a:nth-of-type(2) {
	bottom: 0;
}

.product_view table select {
	width: 100%;
	border: 1px solid #c6c6c6;
	box-sizing: border-box;
	appearance: none;
	-webkit-appearance: none;
	-moz-appearance: none;
}

.protect_view table select::-ms-expand {
	display: none;
}

.product_view .btns {
	text-align: center;
	position: relative;
	left: 430px;
	top: 200px;
}

.product_view .btns>a {
	display: inline-block;
	width: 136px;
	height: 42px;
	font-size: 16px;
	color: #fff;
	border-radius: 2px;
}

.btn-deal {
	position: relative;
	left: 100px;
	padding: 10px;
	background-color: skyblue;
	border-radius: 2px;
}

.btn-goback {
	position: relative;
	left: 100px;
	padding: 10px;
	background-color: yellow;
	border-radius: 2px;
}

.product_detail {
	display: flex;
	justify-content: center;
}
</style>

</head>
<body>
	<header>
		<a href="/bigdata" class="logo"><img src="../image/logo.png" alt=""></a>
		<ul class="navmenu">
			<c:choose>
				<c:when test="${ empty loginUser }">
					<li><a href="#" class="btn-open-login">login</a></li>
					<li><a href="#" class="btn-open-join">register</a></li>
				</c:when>
				<c:otherwise>
					<form method="get" action="logout">
						<input type="submit" value="logout" style="border: 0 solid black">
					</form>
				</c:otherwise>
			</c:choose>
			<li><a href="product">products</a></li>
		</ul>
		<div class="nav-icon">
			<a href="#"></a><i class='bx bx-search'></i> <a href="#"></a><i
				class='bx bx-user'></i> <a href="#"></a><i class='bx bx-cart'></i>

			<div class="bx bx-menu" id="menu-icon"></div>
		</div>

	</header>
	<div class="product_detail">
		<div class="product_view">
			<table>
				<caption>
					<!-- <details class = "hide">
                <summary>상품정보</summary>
                판매가, 상품코드, 옵션 및 결제금액 안내
            </details> -->
				</caption>
				<colgroup>
					<col style="width: 173px;">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<th colspan="2">${ boardDetail.item_name }</th>
					</tr>
					<tr>
						<th>교환 카테고리</th>
						<td class="price">${ boardDetail.item_category }</td>
					</tr>
					<tr>
						<th>상품명</th>
						<td>${ boardDetail.item_name }</td>
					</tr>
					<tr>
						<th>상품코드</th>
						<td>${ boardDetail.board_idx }</td>
					</tr>

					<tr>
						<th>거래방식</th>
						<td>직거래</td>
					</tr>

					<tr>
						<th>거래 선호 카테고리</th>
						<td class="total"><b>${ boardDetail.want_category }</b></td>
					</tr>
					<tr>
						<th>거래 세부 내용</th>
						<c:choose>
							<c:when test="${ !empty boardDetail.board_content }">
								<td>${ boardDetail.board_content }</td>
							</c:when>
							<c:otherwise>
								<td>없음</td>
							</c:otherwise>
						</c:choose>
					</tr>
					<tr>
						<td><button class="btn-goback" onClick="location.href='../'">메인페이지로
								돌아가기</button></td>
						<td><button class="btn-deal" onClick="location.href='#'">거래신청하기</button></td>
					</tr>

				</tbody>
			</table>

			<ul>
				<div class="img">
					<img src="../image/4.jpg" alt="">
			</ul>
		</div>
	</div>

</body>
</html>