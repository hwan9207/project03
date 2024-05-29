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
<link rel="stylesheet" href="${path2}/resources/css/join.css">
<title>JOIN PAGE</title>
</head>
<body>
<header id="hd">
	<%@ include file="../include/header.jsp" %>
</header>
	<div class="container">
        <h2>회원가입</h2>
        <form action="#" method="post">
            <div class="form-group">
                <label for="id">아이디</label>
                <input type="text" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm_password">비밀번호 확인</label>
                <input type="password" id="confirm_password" name="confirm_password" required>
            </div>
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="address">주소</label>
                <input type="text" id="address" name="address" required>
            </div>
            <div class="form-group">
                <label for="detailed_address">상세주소</label>
                <input type="text" id="detailed_address" name="detailed_address" required>
            </div>
            <div class="form-group">
                <label for="zipcode">우편번호</label>
                <input type="text" id="zipcode" name="zipcode" required>
            </div>
            <div class="form-group">
                <label for="birthdate">생년월일</label>
                <input type="date" id="birthdate" name="birthdate" required>
            </div>
            <div class="form-group">
                <button type="submit">가입하기</button>
            </div>
        </form>
</body>
</html>