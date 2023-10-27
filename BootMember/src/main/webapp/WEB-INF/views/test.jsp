<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 게시물 검색</title>
</head>
<body>
	<div class="evaluate-container">
		<h2>사용자 게시물 검색</h2>
		<form action="review_test" method="post">
			<label for="writer_email">사용자 이메일:</label> <input type="text"
				id="writer_email" name="writer_email" required>
			<button type="submit">검색</button>
		</form>

		<!-- 검색 결과를 드롭다운 목록으로 표시 -->
		<h3>검색 결과</h3>
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
			<textarea id="reviewContent" name="review_content" type="text"
				placeholder="후기 내용을 입력"></textarea>
			<br> <label for="customRange2" class="form-label">후기 점수:
				<span id="score">0</span>
			</label>
			<!-- 후기 점수 0부터 100점까지 보내기 -->
			<input type="range" class="form-range" min="0" max="100"
				id="customRange2" name="review_ratings"> <br> <br>
			<button type="submit">후기 보내기</button>
		</form>
	</div>
</body>
</html>
