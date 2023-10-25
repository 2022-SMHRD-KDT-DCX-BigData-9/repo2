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

<link rel="stylesheet" type="text/css" href="../assets/css/detail.css">

</head>
<body>
	<header>
		<a href="/bigdata" class="logo"><img src="../image/logo1.png"
			alt=""></a>
		<ul class="navmenu">
			<c:choose>
				<c:when test="${ empty loginUser }">
					<li><a href="#" class="btn-open-login">login</a></li>
					<li><a href="#" class="btn-open-join">register</a></li>
				</c:when>
				<c:otherwise>
					<form method="get" action="../logout">
						<input type="submit" value="logout" style="border: 0 solid black">
					</form>
				</c:otherwise>
			</c:choose>
			<li><a href="../product">products</a></li>
		</ul>

		<div class="nav-icon">
			<a href="../mypage"><i class='bx bx-user'></i></a>

			<!--  검색창 관련 코드 -->
			<a href="#"><i class='bx bx-search' id="search-icon"
				onclick="toggleSearchBox()"></i></a>
			<form action="../search" method="get">
				<div id="search-box">
					<input type="text" placeholder="찾고 싶은 물품을 입력하세요"
						style="width: 300px;" name="item_name">
					<button onclick="performSearch()">Search</button>
				</div>
			</form>
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
					<img src="data:image/png;base64,${boardDetail.item_img}"
						width="300" height="300" alt="">
					<!-- ../image/4.jpg //  "data:image/png;base64,${board.img }" width = "300" height = "300" -->
			</ul>
		</div>
	</div>

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