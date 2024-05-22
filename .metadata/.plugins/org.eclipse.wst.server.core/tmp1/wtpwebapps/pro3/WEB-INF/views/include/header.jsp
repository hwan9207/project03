<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/header.css">
<meta charset="UTF-8">
<title>header</title>
	<style>
		* {margin: 0px; padding: 0px;
    font-family: "Jua", sans-serif;
    font-weight: 500;
    font-style: normal;  
    }
    body {width: 100%; overflow-x: hidden; height: 100vh;}
    ul {list-style: none;}
    a {text-decoration: none; color: black;}
    .page { clear:both; width: 100%; }
    #page1 {height: 50px;
        margin-left: 85%;
        margin-top: 30px;
    }
    #page2 {}

    /*header*/
    .yhd {width: 100%; height: 90px;
        display: flex;
        position: fixed;
        overflow: hidden;
        justify-content: center; 
        background-color: rgba(226, 221, 221, 0.3);
        z-index: 9999;
    }
    .ylogo {width: 250px;
    }
    .ylogo img { width: 90px; height: 90px;
        margin-left: 150px;
    }
    .ybox {flex-grow: 1;}
    .ymenu {width: 1300px;
            display: flex;
            margin-top: 32px;
            text-align: center;
    }
    .item1>p {width: 180px;}
    .ymenu>li {float: left;
            margin-left: 60px;
            font-size: 30px;
            color: #333;
            text-shadow: 0px 0px 2px;
    }
    .sub li a {font-size: 20px; color: white;}
            .item1 p>a {color: white;}
    .sub {height: 0px; width: 180px; overflow: hidden;}
    .sub>li {height: 50px; }
    .ymenu:hover .sub {height: 250px;
        transition-duration: 1s;
    }
    .item1 a::after {display: block;
            content: "";
            border-bottom: solid 2px tomato;
            transform: scaleX(0);
            transition: transform 250ms ease-in-out;    
        }
    .item1 a:hover::after {transform: scaleX(1);}
	</style>
</head>
<body>
    <section class="page" id="page1">
        <c:if test="${!empty sid}">
            <a href="${path1}/member/mypage.do" class="button is-primary">
                <strong>MyPage</strong>
            </a>
            <a href="${path1}/member/logout.do" class="button is-light">
                LogOut
            </a>
        </c:if>
        <c:if test="${empty sid}">
            <a href="${path1}/member/term.do" class="button is-primary">
                <strong>Sign up</strong>
            </a>
            <a href="${path1}/member/login.do" class="button is-light">
                Log in
            </a>
        </c:if>
        <c:if test="${sid.equals('admin')}">
            <a href="${path1}/member/list.do" class="button is-light">
                MemberList
            </a>
            <a href="${path1}/member/logout.do" class="button is-light">
                LogOut
            </a>
        </c:if>
    </section>
    <section class="page" id="page2">
        <header class="yhd">
            <div class="ylogo">
                <a href="${hpath }/index.jsp"><img src="${hpath }/imgs/logo.png" alt="logo"></a>
            </div>
            <div class="ybox">
                <ul class="ymenu">
                    <li class="item1">
                        <p><a href="">권역별 관광</a></p> 
                        <ul class="sub">
                            <li><a href="${hpath }/north/nmain.jsp" class="dp2">북부권</a></li>
                            <li><a href="${hpath }/south/smain.jsp" class="dp2">남부권</a></li>
                            <li><a href="${hpath }/city/cmain.jsp" class="dp2">도심권</a></li>
                        </ul>
                    </li>
                    <li class="item1">
                        <p><a href="">공&nbsp;&nbsp;연</a></p> 
                        <ul class="sub">
                            <li><a href="${hpath }/nori/showList.jsp" class="dp2">공연 목록</a></li>
                        </ul>
                    </li>
                    <li class="item1">
                        <p><a href="">맛&nbsp;&nbsp;집</a></p> 
                        <ul class="sub">
                            <li><a href="${hpath }/restaurant/restaurant.jsp" class="dp2">음식점</a></li>
                            <li><a href="${hpath }/restaurant/cafe.jsp" class="dp2">카페</a></li>
                        </ul>
                    </li>
                    <li class="item1">
                        <p><a href="">숙&nbsp;&nbsp;박</a></p> 
                        <ul class="sub">
                            <li><a href="${hpath }/accom/accom.jsp" class="dp2">호텔/펜션/캠핑</a></li>
                        </ul>
                    </li>
                    <li class="item1">
                        <p><a href="">커뮤니티</a></p> 
                        <ul class="sub">
                            <li><a href="${hpath }/notice/noti.jsp" class="dp2">공지사항</a></li>
                            <li><a href="${hpath }/notice/board.jsp" class="dp2">자유게시판</a></li>
                        </ul>
                    </li>
                    <li class="item1">
                        <p><a href="">마이페이지</a></p> 
                        <ul class="sub">
                        <c:if test="${empty sid }">
                        <li><a href="${hpath }/member/login.jsp">로그인</a></li>
                        <li><a href="${hpath }/member/join.jsp">회원가입</a></li>
                        </c:if>
                        <c:if test="${not empty sid }">
                        <li><a href="${hpath }/LogOut.do">로그아웃</a></li>
                        <li><a href="${hpath }/EditMember.do?id=${sid }">회원정보</a></li>
                        </c:if>
                        <c:if test="${sid.equals('admin') }">
                        <li><a href="${hpath }/AdminMain.do">관리자페이지</a></li>
                        </c:if>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>
    </section>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${hpath }/js/indexscript.js"></script>
</body>
</html>