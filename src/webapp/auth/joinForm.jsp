<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입{WEB-INF}</title>
<script type="text/javascript">
	const memberInsert = () => {
		console.log("memberInsert");
		document.querySelector("#f_user").submit();
	}
</script>
</head>
<body>
	<h2>회원가입페이지</h2>
	<hr>
	<form id="f_user" method="post" action="/join">
		이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : <input type="text" id="username" name="username"><br>
		비&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;번 : <input type="text" id="password" name="password"><br>
		이 메 일 : <input type="text" id="email" name="email" value="test@hot.com"><br>
		<div style="padding-bottom: 4px;"></div>
		<hr>
		<input type="button" onclick="memberInsert()" value="가입"/>
	</form>
</body>
</html>