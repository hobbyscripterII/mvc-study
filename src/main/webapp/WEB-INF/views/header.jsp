<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css" type="text/css" />
</head>
<body>
<header>
진단검사 프로그램
</header>
<nav>
<a href="p-list">환자조회</a> &nbsp;
<a href="insert">검사결과입력</a> &nbsp;
<a href="r-list">검사결과조회</a> &nbsp;
<a href="ct-cnt">지역별검사건수</a> &nbsp;
<a href="<c:url value="/" />">홈으로</a> &nbsp;
</nav>
</body>
</html>