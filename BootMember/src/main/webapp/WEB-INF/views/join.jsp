<!-- @ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

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
  margin-bottom: 20px;
}

.modal_body fieldset {
  background-color: rgba(255, 255, 204, 0.7);
  margin-top: 20px; 
  border: 2px solid #000; 
}

.modal-footer {
  position: relative;
  bottom: 0;
  left: 50%;

  transform: translateX(-50%) translateY(0);

  margin-top: 20px;
}

</style>
  
</head>

<body>
    <div class="modal">
        <!-- 모달 내용 -->
        <div class="modal_body" > 
                <form action="join" method = "post">
                    <!-- 모달 헤더-->
                    <div class="modal-header">
                        <h2 class="modal-title">회원가입</h2>
                    </div>
                        <div class="main">
                            <input id="email" name="email" type = "email" placeholder = "example@gmail.com" required>
                        </div>
                        <div class="main">
                            <input id="pw" name = "pw" type = "password"  placeholder = "패스워드 입력" required>
                        </div>
                        <div class="main">
                            <input id="name" name = "name" type = "text"  placeholder="이름을 입력" required>
                        </div>
                        <div class="main">
                            <input id="nick" name = "nick" type = "text"  placeholder="닉네임을 입력" required>
                        </div>
                        <div class="main">
                            <input id="address" name = "address" type = "text" placeholder = "주소 입력" required>
                        </div>
                        <div class="main">
                            <input type='tel' id="tel" name='userPhoneNumber' placeholder="010-1234-5678" maxlength="3" required /> 
                        </div>
                    <div>
                        <fieldset>
                            <legend>관심 카테고리</legend>
                            <div>
                                <input type="checkbox" id="electro" name="interest" value="전자제품"/>
                                <label for="electro">전자제품</label>
                            </div>
                            <div>
                                <input type="checkbox" id="daily" name="interest" value="생활용품"/>
                                <label for="daily">생활용품</label>
                            </div>
                            <div>
                                <input type="checkbox" id="sport" name="interest" value="스포츠"/>
                                <label for="sport">스포츠/레져</label>
                            </div>
                            <div>
                                <input type="checkbox" id="cloth" name="interest" value="의류"/>
                                <label for="cloth">의류</label>
                            </div>
                            <div>
                                <input type="checkbox" id="book" name="interest" value="도서"/>
                                <label for="book">도서</label>
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
    <button class="btn-open-popup">회원가입</button>
</body>
        <script>
            const modal = document.querySelector('.modal');
            const btnOpenPopup = document.querySelector('.btn-open-popup');
            const btnClosePopup = document.querySelector('.btn-close-popup');
            
            //모달 열기
            btnOpenPopup.addEventListener('click', () => {
                modal.style.display = 'block';
            });

            //모달 닫기
            btnClosePopup.addEventListener('click', () => {
                modal.style.display = 'none'; 
            });

            // 모달 이외 창 추가해서 닫기
            modal.addEventListener('click', (e) => {
                if (e.target === modal) {
                modal.style.display = 'none';
                }
            });
        </script>
</html>