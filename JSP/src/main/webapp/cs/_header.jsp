<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- 개발/배포에서 ContextPath 포함 여부에 따른 동적처리 -->
<c:set var="ctxPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>케이마켓 고객센터</title>
    <link rel="shortcut icon" type="image/x-icon" href="${ctxPath}/img/favicon.ico" />
    <link rel="stylesheet" href="${ctxPath}/cs/css/style.css">
  </head>
  <body>
    <div id="wrapper">
      <header>
        <div class="top">
          <div>
            <p>
              <a href="./member/login.html">로그인</a>
              <a href="#">회원가입</a>
              <a href="#">마이페이지</a>
              <a href="#"
                ><i class="fa fa-shopping-cart" aria-hidden="true"></i
                >&nbsp;장바구니</a
              >
            </p>
          </div>
        </div>
        <div class="logo">
          <div>
            <a href="#"><img src="${ctxPath}/cs/images/logo.png" alt="로고" />고객센터</a>
          </div>
        </div>
      </header>