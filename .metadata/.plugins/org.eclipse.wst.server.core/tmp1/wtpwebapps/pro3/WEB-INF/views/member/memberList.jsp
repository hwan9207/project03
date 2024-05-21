<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member 목록</title>
</head>
<body>
	<c:forEach var="member" items="${list}">
		<p>아이디 : ${member.id }</p>
		<p>비번 : ${member.pw }</p>
		<p>이름 : ${member.name }</p>
	</c:forEach>
</body>
</html>