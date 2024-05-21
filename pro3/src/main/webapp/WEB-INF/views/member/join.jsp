<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join </title>
</head>
<body>
	<form action="${path2 }/member/join.do" method="post">
		<table>
            <tbody>
            	<tr>
                    <th><label for="id">아이디</label></th>
                    <td><input type="text" name="id" id="id" placeholder="아이디를 입력 하세요" pattern="[a-z0-9]{6,}" required></td>
                    <td colspan="2"><input type="button" value="중복확인"></td>
                </tr>
                <tr>
                    <th><label for="pw">비밀번호</label></th>
                    <td><input type="password" name="pw" id="pw" maxlength="12" placeholder="비밀번호 입력 하세요" required></td>
                </tr>
                <tr>
                    <th><label for="name">*이&nbsp;&nbsp;름</label></th>
                    <td><input type="text" name="name" id="name" placeholder="이름을 입력 하세요" autofocus required></td>
                </tr>
                <tr>
                    <th><label for="birth">생년월일</label></th>
                    <td><input type="text" name="birth" id="birth" placeholder="생년월일 - 없이 입력 하세요." required></td>
                </tr>
                <tr>
                    <th><label for="mail">E-mail</label></th>
                    <td><input type="email" name="mail" id="mail" placeholder="mail 입력 하세요." required></td>
                </tr>
                <tr>
                    <th><label for="ad">번&nbsp;&nbsp;호</label></th>
                    <td><input type="text" name="ad" id="ad" placeholder="연락처 입력 하세요" required></td>
                </tr>
                <tr>
                    <th><label for="ad">주&nbsp;&nbsp;소</label></th>
                    <td><input type="text" name="ad" id="ad" placeholder="주소 입력 하세요" required></td>
                    <td colspan="2"><input type="button" value="우편번호 검색"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    <td colspan="2">
                        <input type="submit" value="회원가입">
                        <input type="reset" value="취소">
                    </td>
                </tr>
            </tbody>
        </table>
	</form>
</body>
</html>