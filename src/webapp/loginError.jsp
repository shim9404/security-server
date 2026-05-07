<%@ page language="java"	contentType="text/html;charset=UTF-8"	pageEncoding="UTF-8"%>
<%
    String errorMessage = request.getParameter("errorMessage");
    //out.print(errorMessage);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인에러</title>
   <link rel="stylesheet" href="/css/bootstrap.css">
   <link rel="stylesheet" href="/css/index.css">
</head>
<body>
<div class="container center-contents">
    <div class="row">
        <h1 class="title display-5 text-danger"> 로그인 에러입니다. </h1>
    </div>
    <div class="row">
        <h3 class="title display-5"><%=errorMessage%></h3>
    </div>
    <div class="links">

        <div class="link">
            <a href="/loginForm"> 로그인 </a>
        </div>

    </div>
</div>
</body>
</html>