<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 게시물 검색</title>

<link rel="stylesheet"
	href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

<link rel="stylesheet" type="text/css" href="assets/css/text.css">

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
		<!-- 	<form action="search" method="get">
				<div id="search-box">
					<input type="text" placeholder="찾고 싶은 물품을 입력하세요"
						style="width: 300px;" name="item_name">
					<button onclick="performSearch()" class="btn-search">Search</button>
				</div>
			</form> -->
		</div>
	</header>



	<section>
		<div class="evaluate-container">
			<h2>사용자 게시물 검색</h2>
			<br>
			<form action="review_test" method="post">
				<label for="writer_email">사용자 이메일:</label> <input type="text"
					id="writer_email" name="writer_email" required>
				<button type="submit">검색</button>
			</form>
			<br>

			<!-- 검색 결과를 드롭다운 목록으로 표시 -->
			<h3>검색 결과</h3>
			<br>
			<form action="selected_post" method="post">
				<label for="selected_post">선택된 게시물:</label> <select
					id="selected_post" name="selected_post">

					<c:choose>
						<c:when test="${not empty userPosts}">
							<c:forEach items="${userPosts}" var="post">
								<option value="${post.board_idx}">${post.item_name}</option>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<option value="-1">검색 결과 없음</option>
						</c:otherwise>
					</c:choose>

				</select>
				
				<p>후기 내용</p>
				<br>
				<textarea id="reviewContent" name="review_content" type="text"
					placeholder="후기 내용을 입력"></textarea>
				<br> <br> <label for="customRange2" class="form-label">후기
					점수: <span id="score">0</span>
				</label>
				<!-- 후기 점수 0부터 100점까지 보내기 -->
				<input type="range" class="form-range" min="0" max="100"
					id="customRange2" name="review_ratings"> <br> <br>
				<button type="submit">후기 보내기</button>
			</form>
		</div>

	</section>

	<script>
		window.onload = function() {
			const rangeInput = document.getElementById("customRange2");
			const scoreSpan = document.getElementById("score");

			rangeInput.addEventListener("input", function() {
				const score = rangeInput.value;
				scoreSpan.innerText = score;
			});
		}
		
	
	</script>

</body>
</html>


