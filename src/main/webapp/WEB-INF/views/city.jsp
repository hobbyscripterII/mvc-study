<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h2>(지역별)검사건수통계</h2>
<form>
<table border="1">
<tr>
<td>지역코드</td>
<td>지역</td>
<td>검사건수</td>
</tr>
<c:forEach var="c" items="${cnt}">
<tr>
<td><c:out value="${c.p_city}"></c:out></td>
<td><c:out value="${c.p_cityName}"></c:out></td>
<td><c:out value="${c.p_cityCnt}"></c:out></td>
</tr>
</c:forEach>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

