<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  action에 절대경로, 상대경로 사용 가능 절대경로 : localhost:8087~ -->
<!-- 상대경로:   -->
<form action="member/login" method = "post">

<input type = "text" name = "email" placeholder = "이메일 입력"><br>
<input type = "password" name = "pw" placeholder = "패스워드 입력"><br>
<input type = "submit" value = "로그인">

</form>

</body>
</html>