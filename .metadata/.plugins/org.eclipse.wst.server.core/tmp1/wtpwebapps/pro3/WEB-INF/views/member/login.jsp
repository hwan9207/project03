<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${path2}/resources/css/login.css">
    <title>Login</title>
    
</head>
<body>
<header id="hd">
		<%@ include file="../include/header.jsp" %>
</header>
    <div class="loginbox">
        <div class="login-container">
            <h2>로그인</h2>
            <form action="/login" method="post">
                <div class="form-group">
                    <label for="username">아이디</label>
                    <input type="text" id="username" name="username" placeholder="아이디를 입력 해주세요." required>
                </div>
                <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input type="password" id="password" name="password" placeholder="비밀번호를 입력 해주세요." required>
                </div>
                <div class="form-group">
                    <button type="submit">로그인</button>
                </div>
            </form>
            <div class="extra-links">
                <a href="#forgot-password">비밀번호 찾기</a>
                <a href="#signup">회원가입</a>
            </div>
        </div>
    </div>
</body>
</html>