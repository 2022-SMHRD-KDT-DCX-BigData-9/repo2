<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--this is a test-->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
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
	crossorigin="anonymous" referrerpolicy="no-referrer">

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
						<input type="submit" value="logout" style="text-transform: uppercase; background: #EDF2F6; border-radius: 30px; border:none; width: 85px; height: 32px; font-size: 16px;">
					</form>
				</c:otherwise>
			</c:choose>
			<li><a href="../product">products</a></li>
		</ul>

		<div class="nav-icon">
			<a href="../mypage"><i class='bx bx-user'></i></a> <a href="#"><i
				class='bx bx-search' id="search-icon" onclick="toggleSearchBox()"></i></a>
			<form action="../search" method="get">
				<div id="search-box">
					<input type="text" placeholder="찾고 싶은 물품을 입력하세요"
						style="width: 300px;" name="item_name">
					<button onclick="performSearch()" class="btn-search">Search</button>
				</div>
			</form>
		</div>
	</header>

	<div class="product_detail">
		<div class="product_view">
			<table>
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
						<th>작성자 이메일</th>
						<th colspan="2" style="font-size: 18px;">${ boardDetail.user_email }</th>
					</tr>
					<tr>
						<th>신뢰도 점수</th>
						<th colspan="2" style="font-size:18px;">${score}점</th>
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
						<td class="total">${ boardDetail.want_category }</td>
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
					<!-- 	<td><button class="btn-deal" onClick="location.href='#'">거래신청하기</button></td> -->
					</tr>
					<c:if test="${loginUser.review_authority eq 0}">
						<c:choose>
							<c:when test="${loginUser.user_email eq boardDetail.user_email}">
								<form action="../review_ok" method="get">
									<tr>
										<td><input type="text" value="${loginUser.user_email}"
											style="display: none" name="user_emailone"></td>
									</tr>
									<tr>
										<td><input type="text" placeholder="거래자 email을 적어주세요:"
											style="width: 300px; height:50px;" name="user_emailtwo"></td>
									</tr>
									<tr>
										<td><button type="submit" value="거래 완료" class="success_btn">거래 완료</button></td>
									</tr>
								</form>
							</c:when>
							<c:otherwise>
								<td></td>
							</c:otherwise>
						</c:choose>
					</c:if>

					<c:if test="${loginUser.review_authority eq 1}">
						<form action="../review_testPage" method="post">
							<tr>
								<td><button type="submit" value="기능 테스트" id="review_info">후기 작성</button></td>
							</tr>
						</form>
					</c:if>
				</tbody>
			</table>
			<ul>
				<div class="img">
					<img src="data:image/png;base64,${boardDetail.item_img}"
						width="300" height="300" alt="">
				</div>
			</ul>
		</div>
	</div><br><br>

	<!-- 댓글 -->
	<div class="comment-section">
		<form id="comment-form" action="/bigdata/submit_comment" method="post">
			<div class="form-group">
				<label for="exampleFormControlTextarea1">Leave Comment:</label><br>
				<textarea class="form-control" name="comment_content" required
					rows="3" placeholder="댓글을 입력하세요" style="width: 500px;"></textarea>
				<input type="hidden" name="board_idx"
					value="${boardDetail.board_idx}">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-light">Submit</button>
			</div>
		</form>
		<br>
		<div id="comments-container">
			<!-- 댓글이 추가되는 div -->
		</div>
	</div>

	<!-- 회원가입 모달 -->
	<div class="modal" id="modal_join">
		<div class="modal_body">
			<form action="../member/join" method="post">
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
			<form id="loginForm" action="../member/login" method="post">
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

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	    // 댓글 기록 비동기 통신 AJAX
	    function loadComments() {
	        var boardIdx = "${boardDetail.board_idx}";
	        $.ajax({
	            url: "/bigdata/${board_idx}/comments",
	            method: "GET",
	            success: function (data) {
	                var commentsContainer = $("#comments-container");
	                commentsContainer.empty(); // 댓글창 초기화 
	                data.forEach(function (comment) {
	                    var commentHtml = '<div class="comment">';
	                    commentHtml += '<strong>작성자: ' + comment.user_email + '</strong><br>';
	                    commentHtml += '<em>작성 시간: ' + comment.created_at + '</em><br>';
	                    commentHtml += comment.comment_content;
	                    commentHtml += '<br><br></div>';
	                    commentsContainer.append(commentHtml);
	                    
	                });
	            },
	            error: function (error) {
	                console.error(error);
	            }
	        });
	    }
	
	    // 페이지 로딩 될때 댓글 보여주게 설정
	    $(document).ready(function () {
	        loadComments();
	    });
	
	    // 댓글 작성 비동기통신 AJAX
	    $("#comment-form").submit(function (e) {
	        e.preventDefault();
	        var commentContent = $("textarea[name='comment_content']").val();
	        var board_idx = $("input[name='board_idx']").val();
	
	        $.ajax({
	            url: "/bigdata/submit_comment",
	            method: "POST",
	            data: {
	                comment_content: commentContent,
	                board_idx: board_idx
	            },
	            success: function () {
	                // 댓글 입력창 초기화
	                $("textarea[name='comment_content']").val('');
	                // 입력 할 때 마다 댓글창 새로 로딩해주기
	                loadComments();
	            },
	            error: function (error) {
	                console.error(error);
	            }
	        });
	    });
	</script>


</body>
</html>