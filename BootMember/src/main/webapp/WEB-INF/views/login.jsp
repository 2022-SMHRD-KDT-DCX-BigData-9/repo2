<!-- %@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
-->
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
    height: 300px;
  
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

        <div class="modal_body"> 

            <form id="loginForm" action="member/login" method = "post">
                <div class="modal-header">
                    <h2 class="modal-title">로그인</h2>
                </div>

                <div class="main">
                    <input id="email" name="email" type = "email" placeholder = "example@gmail.com" required>
                </div>

                <div class="main">
                    <input id="pw" name = "pw" type = "password"  placeholder = "패스워드 입력" required>
                </div>

                <div class="modal-footer">
                    <button type="submit" id="login">로그인</button>
                    <button id="joinButton">회원가입</button>
                    <button class="btn-close-popup">닫기</button>
                </div>
            </form>         
        </div>
    </div>
    <button class="btn-open-popup">로그인</button>
</body>
    <script>
        const modal = document.querySelector('.modal');
        const btnOpenPopup = document.querySelector('.btn-open-popup');
        const btnClosePopup = document.querySelector('.btn-close-popup');
        const joinButton = document.getElementById('joinButton');
        
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

        // join.jsp로 넘어가게 해주는 코드
        joinButton.addEventListener('click', () => {
        window.location.href = 'join.jsp';
        });

        </script>
</html>