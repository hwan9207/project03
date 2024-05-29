<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="hpath" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${path2}/resources/css/freeinsert.css">
<link rel="stylesheet" href="ckeditor.js">
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>

<title>자유게시판 글 등록</title>
</head>
<body>
	<div class="freebox">
        <div class="container">
            <h2>자유게시판 등록</h2>
            <form action="#" method="post">
                <div class="form-group">
                    <label for="title">글 제목</label>
                    <input type="text" id="title" name="title" required>
                </div>
                <div class="form-group">
                    <label for="content">글 내용</label>
                    <textarea id="content" name="content" rows="10" required></textarea>
                </div>
                <div class="form-group">
                    <button type="submit">등록하기</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        ClassicEditor.create( document.querySelector( '#content' ), {
            language: "ko"
        } );
    </script>
</body>
</html>