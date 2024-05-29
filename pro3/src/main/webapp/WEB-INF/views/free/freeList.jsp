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
<link rel="stylesheet" href="${path2}/resources/css/freelist.css">
<title>자유게시판 목록</title>
</head>
<body>
	<div class="freelistbox">
        <div class="container">
            <h2>자유게시판</h2>
            <table class="board">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                	<c:forEach var="free" items="${freeList}">
						<p>번호 : ${sample.num }</p>
						<p>제목 : ${sample.title }</p>
						<p>일시 : ${sample.res }</p>
						<hr>
					</c:forEach>
                    <tr>
                        <td>1</td>
                        <td><a href="post1.html">첫 번째 게시글</a></td>
                        <td>홍길동</td>
                        <td>2024-05-29</td>
                        <td>123</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><a href="post2.html">두 번째 게시글</a></td>
                        <td>김철수</td>
                        <td>2024-05-28</td>
                        <td>45</td>
                    </tr>
                    <!-- 더 많은 게시글 행이 여기에 추가됩니다 -->
                </tbody>
            </table>
            <button onclick="location.href='write.html'" class="write-btn">글쓰기</button>
        </div>
    </div>
</body>
</html>