<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path2" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path2 }/css/footer.css">
<meta charset="UTF-8">
<title>샘플 목록</title>
	<style>
	footer {
	    position: relative;
	    height: 180px;
	    padding: 30px 370px 32px 80px;
	    background: #ada8a8;
	    z-index: 16;
	    font-weight: 800;
	  }
	  
	  footer .footer_link {
	    margin-bottom: 10px;
	  }
	  
	  footer .footer_link a {
	    display: inline-block;
	    margin-right: 45px;
	    font-size: 16px;
	    font-weight: 400;
	    color: #181414;
	    line-height: 36px;
	  }
	  
	  footer .footer_link a.priv {
	    color: #0890c0;
	    font-weight: 700;
	  }
	  
	  footer .footer_link a:last-child {
	    margin-right: 0;
	  }
	  
	  footer .address {
	    font-size: 14px;
	    font-weight: 300;
	    color: #111010;
	    line-height: 30px;
	  }
	  
	  /* 2022-02-15 추가 */
	  footer .registration {
	    font-size: 14px;
	    font-weight: 300;
	    color: #111010;
	    line-height: 30px;
	  }
	  /* // 2022-02-15 추가 */
	  
	  footer .copy {
	    font-size: 12px;
	    font-weight: 300;
	    color: #050505;
	    line-height: 22px;
	    letter-spacing: 1px;
	  }
	  
	  footer .logo {
	    position: absolute;
	    top: 50%;
	    left: auto;
	    right: 80px;
	    width: 134px;
	    transform: translateY(-50%);
	    height: 34px;
	    background: url("../../common/images/footer-logo.png") center no-repeat;
	    text-indent: -9999px;
	  }
	  
	  footer .link_selec {
	    position: absolute;
	    top: 80px;
	    right: 80px;
	    width: 240px;
	  }
	  
	  footer .link_selec .open {
	    display: block;
	    padding: 15px 0;
	    font-size: 16px;
	    font-weight: 300;
	    color: #333333;
	    line-height: 1;
	    letter-spacing: 0.4px;
	    background: url("../../common/images/select-icon2-on.png") no-repeat right center;
	    border-bottom: 2px solid #000000;
	  }
	  
	  footer .link_selec .fam_link_div {
	    display: none;
	    position: absolute;
	    bottom: 0;
	    left: 0;
	    width: 100%;
	    padding: 14px 20px;
	    background: #000;
	  }
	  
	  footer .link_selec .fam_link_div > div a {
	    display: block;
	    padding-top: 26px;
	    font-size: 16px;
	    font-weight: 300;
	    color: #fff;
	    line-height: 1;
	  }
	  
	  footer .link_selec .fam_link_div > div a:first-child {
	    padding-top: 0;
	  }
	  
	  footer .link_selec .fam_link_div .close {
	    display: block;
	    position: absolute;
	    bottom: 14px;
	    right: 12px;
	    width: 80px;
	    height: 16px;
	    background: url("../../common/images/select-icon2-wht-on.png") no-repeat center right;
	  }
	  
	  @media all and (max-width: 1500px) {
	    footer {
	      height: auto;
	      padding-left: 5%;
	    }
	    footer .logo {
	      right: 5%;
	    }
	  }
	  
	  @media all and (max-width: 1024px) {
	    footer .footer_link a {
	      margin-right: 15px;
	    }
	  }
	  
	  @media all and (max-width: 768px) {
	    footer {
	      height: auto;
	      padding: 34px 5%;
	    }
	    footer .footer_link {
	      margin-bottom: 12px;
	    }
	    footer .footer_link a {
	      margin: 0 26px 0 0;
	      line-height: 27px;
	      font-size: 13px;
	    }
	    footer .footer_link a:last-child {
	      margin-right: 0;
	    }
	    footer .link_selec {
	      display: none;
	    }
	    footer .address {
	      display: none;
	    }
	    /* 2022-02-15 추가 */
	    footer .registration {
	      font-size: 13px;
	    }
	    /* // 2022-02-15 추가 */
	    footer .copy {
	      font-size: 10px;
	      font-weight: 300;
	      color: #777;
	      line-height: 16px;
	    }
	    footer .logo {
	      display: none;
	    }
	  }
	</style>
</head>
<body>
	<footer id="footer" data-swiftype-index="false">
        <hr>
        <div class="footer_link">
            <a href="/business/overview/index.do">기업정보</a>
            <a href="/etc/policy/use/view.do">이용약관</a>
            <a href="/etc/policy/privacy/view.do" class="priv">개인정보처리방침</a>
            <a href="/etc/new-store/index.do">매장개설안내</a>
            <a href="/etc/special-business/index.do">특판사업</a>
            <a href="/customer/prdct-manual/index.do">고객지원</a>
            <a href="javascript:cmmCtrl.loginCheckPage('/my-page/buy-auth/index.do')">구매인증센터</a>
        </div>
        <hr>
        <p class="registration">(주)에이스침대 / 사업자등록번호 : 129-81-02666</p> <!-- 2022-02-15 추가 -->
        <!-- 2021-02-16 수정 -->
        <p class="address">본사 : 경기도 성남시 중원구 사기막골로 105번길 42(상대원동) / 서울영업본부 : 서울특별시 강남구 도산대로 218  / FAX : 02-544-8788</p>
        <!-- // 2021-02-16 수정 -->

        <p class="copy">COPYRIGHT (C) ACE BED <br class="only_mob">CORPORATION ALL RIGHTS RESERVED</p>
        <div class="link_selec">
            <div class="fam_link_div">
                <div>
                    <a href="http://eng.acebed.com" target="_blank">ENGLISH</a>
                    <a href="http://www.aceavenue.co.kr" target="_blank">에이스 에비뉴</a>
                    <a href="http://www.aceheritz.com" target="_blank">에이스 헤리츠</a>
                    <a href="https://acebedmall.co.kr" target="_blank">에이스 침대몰</a>
                </div>
                <a href="javascript:" class="close"></a>
            </div>
            <a href="javascript:" class="open">FAMILY SITE</a>
        </div>
    </footer>
</body>
</html>