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
<h2>환자조회</h2>
<form>
<table border="1">
<tr>
<td>환자번호</td>
<td>환자성명</td>
<td>생년월일</td>
<td>성별</td>
<td>전화번호</td>
</tr>

<c:forEach var="p" items="${patient}">
<tr>
<td> <c:out value="${p.p_no }" /> </td>
<td> <c:out value="${p.p_name }" /> </td>
<td> <c:out value="${p.p_birth }" /> </td>
<td> <c:out value="${p.p_gender }" /> </td>
<td> <c:out value="${p.p_phone }" /> </td>
</tr>
</c:forEach>

</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>