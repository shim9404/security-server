<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Spring Security에서 role 체크 (컨테이너 역할 체크)
    boolean isAdmin   = request.isUserInRole("ROLE_ADMIN");
    boolean isManager = request.isUserInRole("ROLE_MANAGER");
    boolean isUser    = request.isUserInRole("ROLE_USER");

    // 최종 목표 정책: USER 이상 / MANAGER 이상 / ADMIN만
    boolean canAccessUser    = isUser || isManager || isAdmin;   // USER 이상
    boolean canAccessManager = isManager || isAdmin;             // MANAGER 이상
    boolean canAccessAdmin   = isAdmin;                           // ADMIN만

    boolean isLoggedIn = canAccessUser || canAccessManager || canAccessAdmin;
    // 또는 (isAdmin || isManager || isUser) 로 충분

    // 디버깅 출력 (필요 없으면 지우세요)
    out.print("isAdmin:" + isAdmin + ", isManager:" + isManager + ", isUser:" + isUser);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/index.css">
</head>
<body>
<div class="container center-contents">
    <div class="row">
        <h1 class="title display-5">메인 페이지</h1>
    </div>

    <div class="links">

        <%-- 로그인 안 했으면 로그인 메뉴만 --%>
        <% if (!isLoggedIn) { %>
        <div class="link">
            <a href="/loginForm">로그인</a>
        </div>
        <% } %>

        <%-- /user/** : USER 이상(= USER, MANAGER, ADMIN) --%>
        <% if (canAccessUser) { %>
        <div class="link">
            <a href="/user">유저 페이지</a>
        </div>
        <% } %>

        <%-- /manager/** : MANAGER 이상(= MANAGER, ADMIN) --%>
        <% if (canAccessManager) { %>
        <div class="link">
            <a href="/manager">매니저 페이지</a>
        </div>
        <% } %>

        <%-- /admin/** : ADMIN만 --%>
        <% if (canAccessAdmin) { %>
        <div class="link">
            <a href="/admin">관리자 페이지</a>
        </div>
        <% } %>

        <%-- 로그아웃은 로그인한 사람에게만 --%>
        <% if (isLoggedIn) { %>
        <div class="link">
            <a href="/logout">로그아웃</a>
        </div>
        <% } %>

    </div>
</div>
</body>
</html>
