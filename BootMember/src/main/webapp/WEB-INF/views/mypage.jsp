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

<link rel="stylesheet" type="text/css" href="assets/css/mypage.css">


</head>
<body>
	<header>
		<a href="/bigdata" class="logo"><img src="image/logo1.png" alt=""></a>
		<ul class="navmenu">
			<c:choose>
				<c:when test="${ empty loginUser }">
					<li><a href="#" class="btn-open-login">login</a></li>
					<li><a href="#" class="btn-open-join">register</a></li>
				</c:when>
				<c:otherwise>
<!-- 					<form method="get" action="logout">
						 <input type="submit" value="logout" class="logout-btn">
					</form> -->
					<li><a href="logout" class="logout-btn">logout</a></li>
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
					<button onclick="performSearch()" class="btn-search">Search</button>
				</div>
			</form>
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

	<br><br><br><br>
	
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
						<input type="submit" value="수정하기" class="btn-submit">
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
	window.addEventListener('click', (e) => {
	    if (e.target === modalUpdate) {
	        modalUpdate.style.display = 'none';
	    }
	});
       
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