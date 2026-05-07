<%@ page language="java" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>로그인 페이지{WEB-INF}</title>
    <script>
      const login = (event) => {
        //alert("로그인 호출");
        document.getElementById("f_login").submit();
      };
      const joinForm = (event) => {
        location.href = "/joinForm";
      };
    </script>
  </head>
  <body>
    <h1>로그인 페이지{WEB-INF}</h1>
    <h3>username:apple, password:123(admin )</h3>
    <h3>username:kiwi, password:123(user)</h3>
    <h3>username:tomato, password:123(manager)</h3>
    <form id="f_login" action="/loginProcess" method="post">
      <hr />
      <input type="text" name="username" placeholder="Username" /><br />
      <input type="password" name="password" placeholder="Password" /><br />
      <hr />
      <div style="padding-bottom: 4px"></div>
      <button type="button" onclick="login()">로그인</button>
      <button type="button" onclick="joinForm()">회원가입</button>
    </form>
  </body>
</html>
