<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
html {
	background-color: lightgray;
}

header {
	position: fixed;
	left: 0;
	top: 0;
	display: flex;
	justify-content: center;
	width: 100%;
	height: 45px;
	line-height: 45px;
	background-color: blue;
	color: white;
	font-size: 25px;
}

nav {
	position: fixed;
	left: 0;
	top: 45px;
	display: flex;
	justify-content: center;
	width: 100%;
	height: 30px;
	line-height: 30px;
	background-color: orange;
	color: white;
}

nav > a {
	text-decoration: none;
	color: white;
	}
	
section {
	position: fixed;
	display: flex;
	flex-direction: column;
	left: 0;
	top: 75px;
	width: 100%;
	height: 100%;
	text-align: center;
}

form {
	display: flex;
	justify-content: center;
	text-align: center;
}
</style>
<body>
<header>
(과정평가형 정보처리산업기사) 진단검사 프로그램 ver 2020-04
</header>
<nav>
<a href="plist.jsp">환자조회</a> &nbsp;
<a href="insert.jsp">검사결과입력</a> &nbsp;
<a href="rlist.jsp">검사결과조회</a> &nbsp;
<a href="city.jsp">지역별검사건수</a> &nbsp;
<a href="index.jsp">홈으로</a> &nbsp;
</nav>
</body>
</html>