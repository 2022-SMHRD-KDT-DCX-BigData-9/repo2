<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
	/* position: fixed; */
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

.container {
	position: relative;
	display: flex;
	top: 100px;
	justify-content: center;
}

table {
	border-collapse: collapse; /* 테두리 간격 제거 */
	border: 2px solid black; /* 표의 바깥 테두리 스타일 설정 */
	width: 500px;
	text-align: center;
	border-radius: 10px;
}

td {
	padding: 8px; /* 셀 내부 여백 설정 */
	text-align: center;
}

.upload_btn {
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

	<form action="boardWrite" method="post" enctype="multipart/form-data">
		<div class="container">
			<table>
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td><span><b>물품 이름</b></span></td>
				</tr>


				<tr>
					<td><input type="text" placeholder="제목을 입력해주세요"
						name="item_name"></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>


				<tr>
					<td><span><b>user_email(id)</b></span></td>
				</tr>

				<tr>
					<td><input type="email" name="user_email"
						placeholder="예- hongildong@naver.com"></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>


				<tr>
					<td><span><b>물품 카테고리</b></span></td>
				</tr>

				<tr>
					<td><select name="item_category" id="item_category">
							<option value="전자제품">전자제품</option>
							<option value="의류">의류</option>
							<option value="책">책</option>
							<option value="레저/스포츠">레저/스포츠</option>
							<option value="생활용품">생활용품</option>
					</select></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td><span><b>교환 희망 카테고리</b></span></td>
				</tr>


				<tr>
					<td><select name="want_category" id="want_category">
							<option value="전자기기">전자기기</option>
							<option value="의류">의류</option>
							<option value="도서">도서</option>
							<option value="레저/스포츠">레저/스포츠</option>
							<option value="생활용품">생활용품</option>
					</select></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td><span><b>약속 희망 장소</b></span></td>
				</tr>

				<tr>
					<td><input type="text" id="sample5_address" placeholder="주소"
						name="item_place"> <input type="button"
						onclick="sample5_execDaumPostcode()" value="주소 검색"></td>
				</tr>

				<tr>

					<td>
						<center>
							<div id="map"
								style="width: 300px; height: 300px; margin-top: 10px; display: none"></div>
						</center>
					</td>

				</tr>

				<tr>
					<td><span><b>비고</b></span></td>
				</tr>

				<tr>
					<td><textarea name="board_content" id="board_content"
							cols="30" rows="10" style="width: 300px;"></textarea></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td><span><b>이미지 파일 업로드</b></span></td>
				</tr>

				<tr>
					<td><input type="file" id="photo" name="photo"
						enctype="multipart/form-data"></td>
				</tr>

				<tr>

					<td><img id="preImage" width="500" height="400"
						src="https://dummyimage.com/500x500/ffffff/000000.png&text=preview+image"></td>
				</tr>

				<tr>
					<td><input type="submit" value="게시물 업로드" class="upload_btn"></td>
				</tr>
			</table>
		</div>

	</form>

	<script>
	    function toggleSearchBox() {
	        var searchBox = document.getElementById("search-box");
	        if (searchBox.style.display === "none" || searchBox.style.display === "") {
	            searchBox.style.display = "block";
	        } else {
	            searchBox.style.display = "none";
	        }
	    }
	</script>

	<!-- 카카오맵 API -->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- 우편번호 받는 API -->
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=324cfea6807033dd3befc76ec00f2537&libraries=services"></script>

	<script>
       var mapContainer = document.getElementById('map'), // 지도를 표시할 div   
           mapOption = {
               center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
               level: 5 // 지도의 확대 레벨
           };
   
       //지도를 미리 생성
       var map = new daum.maps.Map(mapContainer, mapOption);
       //주소-좌표 변환 객체를 생성
       var geocoder = new daum.maps.services.Geocoder();
       //마커를 미리 생성
       var marker = new daum.maps.Marker({
           position: new daum.maps.LatLng(37.537187, 127.005476), // 중심좌표에 마커 생성
           map: map
       });
   
      // 버튼 클릭 시 작동하는 function()
       function sample5_execDaumPostcode() {
           new daum.Postcode({
               oncomplete: function(data) {
                   var addr = data.address; // 최종 주소 변수
   
                   // 입력한 주소 가져오기
                   document.getElementById("sample5_address").value = addr;
                   // 주소로 상세 정보를 검색
                   geocoder.addressSearch(data.address, function(results, status) {
                       // 정상적으로 검색이 완료됐으면
                       if (status === daum.maps.services.Status.OK) {
   
                           var result = results[0]; //첫번째 결과의 값을 활용
   
                           // 해당 주소에 대한 좌표를 coords에 저장
                           var coords = new daum.maps.LatLng(result.y, result.x);
                           // 지도를 보여준다.
                           mapContainer.style.display = "block";
                           map.relayout();
                           // 지도 중심을 변경한다.
                           map.setCenter(coords);
                           // 마커를 결과값으로 받은 위치로 옮긴다.
                           marker.setPosition(coords)
                       }
                   });
               }
           }).open();
       }
   </script>

	<script type="text/javascript">
      /* id가 preImage인 img 태그 가져오기 */
      let preImage = document.getElementById("preImage");
      let photo = document.getElementById("photo"); // input tag
      // photo(input)에 이벤트(파일 선택, 변경)가 발생했을 때 img의 src 속성값을 변경
      photo.addEventListener("change", e => {
         setImage(e.target) /*  실제 첨부된 이미지 다룰 수 있다*/
      })
      
      function setImage(input) { //input : 첨부된 파일을 포함한 input 태그 요소
         
         // input 태그에 추가된 파일이 있는지!
         if (input.files && input.files[0]) {
            console.log(input.files)
            // e -> 발생한 모든 이벤트
            // FileReader 생성
             const reader = new FileReader
            reader.readAsDataURL(input.files[0]) // filereader 생성이 되었는지 확인
               
            reader.onload = e => {
               console.log(e)
               preImage.src = e.target.result
               }
            }
         }
   </script>

</body>
</html>