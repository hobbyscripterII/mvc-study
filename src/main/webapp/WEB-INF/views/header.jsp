<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" type="text/css" />
</head>
<body>
<header>
<a href="<c:url value="/" />">더블유병원 환자 관리 페이지</a>
</header>
<nav>
<a href="<c:url value="/" />">홈으로</a> &nbsp; &nbsp;
<a href="login">로그인</a> &nbsp; &nbsp;
<a href="p-insert">환자 등록</a> &nbsp; &nbsp;
<a href="p-list">환자 조회</a> &nbsp; &nbsp;
<a href="insert">검사 결과 등록</a> &nbsp; &nbsp;
<a href="r-list">검사 결과 조회</a> &nbsp; &nbsp;
<a href="ct-cnt">지역별 검사 건수</a>
</nav>
</body>
</html>