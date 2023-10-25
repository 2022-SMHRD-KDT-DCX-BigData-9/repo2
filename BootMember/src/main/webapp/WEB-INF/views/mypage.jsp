<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	height: 50vh;
	background-position: center;
	background-size: cover;
	display: grid;
	grid-template-columns: repeat(1, 1fr);
	align-items: center;
}

.main-text h5 {
	float: right;
	color: #EE1C47;
	font-size: 16px;
	text-transform: capitalize;
	font-weight: 500;
}

.main-text h1 {
	padding-top: 100px;
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
	color: black;
}

.products {
	display: grid;
	grid-template-columns: repeat(4, 1fr);
	gap: 10px;
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
	font-size: 28px;
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
	width: 300px;
	height: auto;
	border-radius: 30px;
	transition: all .40s;
}

.cart img:hover {
	transform: scale(0.9);
}

.update-cart {
	display: grid;
	grid-template-columns: repeat(4, minmax(100px, auto));
	gap: 2rem;
	justify-items: center;
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

.productList1 {
	width: 50%;
	height: auto;
	border-right: 1px solid rgba(184, 184, 184, 0.4);
	float: left;
	padding: 20px;
	margin-bottom: 10%;
}

.productList2 {
	width: 50%;
	height: auto;
	border-left: 1px solid rgba(184, 184, 184, 0.4);
	float: right;
	padding: 20px;
	margin-bottom: 10%;
}

.profile-img {
	float: left;
	padding-top: 50px;
	margin-right: 50px;
	width: 200px;
	height: 200px;
	padding-top: 50px;
	width: 200px;
}

.profile-img img {
	width: 200px;
	height: 200px;
}

.profile-top {
	display: inline-flex;
}

.profile-update {
	width: 40%;
	height: 200px;
	float: right;
}

.profile-update li {
	display: inline-block;
	text-align: center;
	float: right;
	padding-top: 125px;
}

.profileUpdate a {
	color: black;
}

.profileUpdate a:hover {
	text-decoration: underline;
}

#modal_update {
	display: none;
	position: fixed;
	z-index: 1001;
	left: 1100px;
	top: 200px;
}
/* 검색창 관련 css  */
#search-box {
	display: none;
}

/* 스타일 끝 */
</style>
</head>
<body>
	<header>
		<a href="/bigdata" class="logo"><img src="image/logo.png" alt=""></a>
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
			<a href="#"></a><i class='bx bx-search'></i> <a href="mypage"></a><i
				class='bx bx-user'></i> <a href="#"></a><i class='bx bx-cart'></i>

			<div class="bx bx-menu" id="menu-icon"></div>
		</div>
	</header>

	<section class="main-home">
		<div class="profile-top">
			<div class="profile-img">
				<img src="image/profile.png">
			</div>

			<div class="main-text">
				<h1>
					${ loginUser.user_nick }님 <br>
				</h1>
				<p>점수 (거래 횟수)</p>
			</div>

			<div class="profile-update">
				<li class="profileUpdate"><button class="btn-update-profile">회원정보
						수정</button></li>
			</div>
		</div>
	</section>

	<!-- 거래중 상품 목록 리스트 -->
	<div class="center-text">
		<h2>
			<span>작성한 게시글</span>
		</h2>
	</div>
	<section class="trending products" id="trending">
		<c:forEach items="${ userBoard }" var="b">
			<!-- 첫번째 카테고리 - 상품 4개 -->
			<div class="row">
				<!-- 누르면 상세 페이지로 이동하게 설정하기 -->
				<a href="http://localhost:8087/bigdata/board/${ b.board_idx }">
					<img src="data:image/png;base64,${b.item_img}">
				</a>

				<div class="price">
					<h4>
						<p>${ b.item_name }</p>
					</h4>
					<p>${ b.want_category }</p><span><b>views</b>: ${b.board_views}</span>
				</div>
			</div>
		</c:forEach>
	</section>

	<!-- 페이징 기능 -->
	<div class="pagination" style="text-align: center">
		<c:set var="totalPages" value="${totalPages}" />

		<!-- 이전페이지 -->
		<c:choose>
			<c:when test="${currentPage > 1}">
				<a href="?page=${currentPage - 1}">Previous</a>
			</c:when>
			<c:otherwise>
				<span>Previous</span>
			</c:otherwise>
		</c:choose>

		<!-- 페이지 숫자 부분 -->
		<c:forEach begin="1" end="${totalPages}" var="page">
			<c:choose>
				<c:when test="${page == currentPage}">
					<span>${page}</span>
				</c:when>
				<c:otherwise>
					<a href="?page=${page}">${page}</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<!-- 다음 페이지 -->
		<c:choose>
			<c:when test="${currentPage < totalPages}">
				<a href="?page=${currentPage + 1}">Next</a>
			</c:when>
			<c:otherwise>
				<span>Next</span>
			</c:otherwise>
		</c:choose>
	</div>



	<!-- 회원 리뷰 section -->
	<section class="Update-news">
		<div class="up-center-text">
			<h2>Review</h2>
		</div>

		<div class="update-cart">
			<div class="cart">
				<img src="image/bl-1.png" alt="">
				<h5>상품명 (제목)</h5>
				<h4>받은 후기 점수</h4>
				<p>받은 후기 내용</p>
			</div>

			<div class="cart">
				<img src="image/bl-2.png" alt="">
				<h5>상품명 (제목)</h5>
				<h4>받은 후기 점수</h4>
				<p>받은 후기 내용</p>
			</div>

			<div class="cart">
				<img src="image/bl-3.png" alt="">
				<h5>상품명 (제목)</h5>
				<h4>받은 후기 점수</h4>
				<p>받은 후기 내용</p>
			</div>

			<div class="cart">
				<img src="image/bl-3.png" alt="">
				<h5>상품명 (제목)</h5>
				<h4>받은 후기 점수</h4>
				<p>받은 후기 내용</p>
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


	<!-- 회원 정보 수정할 수 있는 모달창 -->
	<div class="modal" id="modal_update">
		<div class="modal_body">
			<form action="update" method="post">
				<!-- 모달 헤더-->
				<div class="modal-header">
					<h2 class="modal-title">정보 수정</h2>
				</div>
				<div class="main">
					<input id="pw" name="user_pw" type="password" placeholder="패스워드 입력"
						required>
				</div>
				<div class="main">
					<input id="nick" name="user_nick" type="text" placeholder="닉네임을 입력"
						required>
				</div>
				<div>
					<fieldset>
						<legend>관심 카테고리</legend>
						<div>
							<input type="checkbox" id="electro" name="user_category"
								value="전자제품" onclick="category_check(this)" /> <label
								for="electro">전자제품</label>
						</div>
						<div>
							<input type="checkbox" id="daily" name="user_category"
								value="생활용품" onclick="category_check(this)" /> <label
								for="daily">생활용품</label>
						</div>
						<div>
							<input type="checkbox" id="sport" name="user_category"
								value="스포츠" onclick="category_check(this)" /> <label
								for="sport">스포츠/레저</label>
						</div>
						<div>
							<input type="checkbox" id="cloth" name="user_category" value="의류"
								onclick="category_check(this)" /> <label for="cloth">의류</label>
						</div>
						<div>
							<input type="checkbox" id="book" name="user_category" value="도서"
								onclick="category_check(this)" /> <label for="book">도서</label>
						</div>
					</fieldset>
					<!-- 모달 푸터-->
					<div class="modal-footer">
						<input type="submit" value="수정하기">
						<button class="btn-close-popup">닫기</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script>
        //회원정보 수정 모달
       const modalUpdate = document.querySelector('#modal_update');
        //회원정보 수정 버튼
       const btnUpdateProfile = document.querySelector('.btn-update-profile');
       const btnClosePopup = document.querySelector('.btn-close-popup');

        //회원 정보 수정 모달 열기
       btnUpdateProfile.addEventListener('click', () => {
           modalUpdate.style.display = 'block';
       });

       // 모달 닫기
         btnClosePopup.addEventListener('click', () => {
           modalUpdate.style.display = 'none';
       });

       // 모달 이외 창 추가해서 닫기
       modalUpdate.addEventListener('click', (e) => {
           if (e.target === modalUpdate) {
               modalUpdate.style.display = 'none';
           }
       });
   </script>

	<!-- 체크박스 하나만 선택할 수 있게 하는 JS -->
	<script>
      function category_check(element) {
         const checkboxes 
            = document.getElementsByName("user_category");
         
         checkboxes.forEach((cb) => {
             cb.checked = false;
           })
           
           element.checked = true;
      }
   </script>


</body>
</html>