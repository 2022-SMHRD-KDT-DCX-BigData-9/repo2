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

<link rel="stylesheet" type="text/css" href="assets/css/boardwrite.css">

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
			<table class="table_info">
				<tr>
					<td><br></td>
				</tr>

				<tr>
					<td><span><b>물품 이름</b></span></td>
				</tr>


				<tr class="table_box">
					<td><input type="text" placeholder="제목을 입력해주세요"
						name="item_name"></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>


				<tr>
					<td><span><b>user_email(id)</b></span></td>
				</tr>

				<tr class="table_box">
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