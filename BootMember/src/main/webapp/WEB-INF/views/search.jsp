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

.modal {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(200, 200, 200, 0.8);
}

.modal.show {
	display: block;
}

.modal-header {
	position: relative;
	top: 50%;
	left: 50%;
	text-align: center;
	transform: translateX(-50%) translateY(-50%);
	margin-bottom: 20px;
}

.modal_body {
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	height: 700px;
	padding: 40px;
	text-align: center;
	background-color: rgb(192, 192, 192);
	border-radius: 10px;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
	margin-top: 20px;
	border: 2px solid #000;
}

.modal_body .main {
	margin-bottom: 30px;
}

.modal_body .main input {
	width: 80%;
	padding: 10px;
}

.modal_body fieldset {
	background-color: rgba(255, 255, 204, 0.7);
	margin-top: 20px;
	border: 2px solid #000;
}

.modal_body fieldset input[type="checkbox"] {
	width: 20px;
	height: 20px;
	margin-right: 10px;
}

.modal-footer {
	position: relative;
	bottom: 0;
	left: 50%;
	transform: translateX(-50%) translateY(0);
	margin-top: 20px;
}

.upload_thing_btn {
	position: relative;
	width: 200px; /* 원하는 너비 설정 */
	padding: 10px; /* 버튼 내부 여백 설정 */
	background-color: #0074d9; /* 배경색 설정 */
	color: #fff; /* 텍스트 색상 설정 */
}
/* 검색창 관련 css  */
#search-box {
	display: none;
}
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
         <a href="mypage"><i class='bx bx-user'></i></a>

         <!--  검색창 관련 코드 -->
         <a href="#"><i class='bx bx-search' id="search-icon"
            onclick="toggleSearchBox()"></i></a>
         <form action="search" method="get">
            <div id="search-box">
               <input type="text" placeholder="찾고 싶은 물품을 입력하세요"
                  style="width: 300px;" name="item_name">
               <button onclick="performSearch()">Search</button>
            </div>
         </form>
      </div>
   </header>
   
   
   <section class="trending products" id="trending">
      <c:forEach items="${search_value}" var="boardCategory">
         <div class="row">
            <!-- 누르면 상세 페이지로 이동하게 설정하기 -->
            <a href="http://localhost:8087/bigdata/board/${boardCategory.board_idx}">
                <img src="data:image/png;base64,${boardCategory.item_img}" width="300" height="300" alt="">
                    <!-- <img src="image/1.jpg" alt=""> -->
                </a>
            <div class="price">
               <h4>${ boardCategory.item_name }</h4>
               <p>${ boardCategory.want_category }</p><span><b>views</b>: ${boardCategory.board_views}</span>
            </div>
         </div>
         </div>
      </c:forEach>
   </section>
   
   
	<!-- 회원가입 모달 -->
	<div class="modal" id="modal_join">
		<!-- 모달 내용 -->
		<div class="modal_body">
			<form action="member/join" method="post">
				<!-- 모달 헤더-->
				<div class="modal-header">
					<h2 class="modal-title">회원가입</h2>
				</div>
				<div class="main">
					<input id="email" name="user_email" type="email"
						placeholder="example@gmail.com" required>
				</div>
				<div class="main">
					<input id="pw" name="user_pw" type="password" placeholder="패스워드 입력"
						required>
				</div>
				<div class="main">
					<input id="name" name="user_name" type="text" placeholder="이름을 입력"
						required>
				</div>
				<div class="main">
					<input id="nick" name="user_nick" type="text" placeholder="닉네임을 입력"
						required>
				</div>
				<div class="main">
					<input id="address" name="user_addr" type="text"
						placeholder="주소 입력" required>
				</div>
				<div class="main">
					<input type="tel" id="tel" name="user_phone"
						placeholder="010-1234-5678" maxlength="15" required />
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
								value="스포츠/레저" onclick="category_check(this)" /> <label
								for="sport">스포츠/레저</label>
						</div>
						<div>
							<input type="checkbox" id="cloth" name="user_category" value="의류"
								onclick="category_check(this)" /> <label for="cloth">의류</label>
						</div>
						<div>
							<input type="checkbox" id="book" name="user_category" value="책"
								onclick="category_check(this)" /> <label for="book">책</label>
						</div>
					</fieldset>
					<!-- 모달 푸터-->
					<div class="modal-footer">
						<button type="submit" id="join">회원가입</button>
						<button class="btn-close-popup">닫기</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	<div class="modal" id="modal_login">
		<div class="modal_body">

			<form id="loginForm" action="member/login" method="post">
				<div class="modal-header">
					<h2 class="modal-title">로그인</h2>
				</div>

				<div class="main">
					<input id="user_email" name="user_email" type="email"
						placeholder="example@gmail.com" required>
				</div>

				<div class="main">
					<input id="user_pw" name="user_pw" type="password"
						placeholder="패스워드 입력" required>
				</div>

				<div class="modal-footer">
					<button type="submit" id="login">로그인</button>
					<button id="joinButton">회원가입</button>
					<button class="btn-close-popup">닫기</button>
				</div>
			</form>
		</div>
	</div>

	<script>
      const header = document.querySelector("header");
   
      window.addEventListener("scroll", function() {
      header.classList.toggle("sticky", this.window.scrollY > 0);
      })
   
      const modalJoin = document.querySelector('#modal_join');
      const modalLogin = document.querySelector('#modal_login');
      const btnOpenJoinPopup = document.querySelector('.btn-open-join');
      const btnOpenLoginPopup = document.querySelector('.btn-open-login');
      const btnClosePopup = document.querySelector('.btn-close-popup');
   
      // 회원가입 모달 열기
      btnOpenJoinPopup.addEventListener('click', () => {
         modalJoin.style.display = 'block';
      });
   
      // 로그인 모달 열기
      btnOpenLoginPopup.addEventListener('click', () => {
         modalLogin.style.display = 'block';
      });
   
      // 모달 닫기
      btnClosePopup.addEventListener('click', () => {
         modalJoin.style.display = 'none';
         modalLogin.style.display = 'none';
      });
   
      // 모달 이외 창 추가해서 닫기
      modalJoin.addEventListener('click', (e) => {
         if (e.target === modalJoin) {
         modalJoin.style.display = 'none';
         }
      });
   
      modalLogin.addEventListener('click', (e) => {
         if (e.target === modalLogin) {
         modalLogin.style.display = 'none';
         }
      });
      
      function redirectToURL() {
            // 원하는 URL로 이동
            window.location.href = "upload";
        }
      
      function toggleSearchBox() {
            var searchBox = document.getElementById("search-box");
            if (searchBox.style.display === "none" || searchBox.style.display === "") {
                searchBox.style.display = "block";
            } else {
                searchBox.style.display = "none";
            }
        }
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