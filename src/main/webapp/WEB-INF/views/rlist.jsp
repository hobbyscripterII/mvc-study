<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<h2>검사결과조회</h2>
<form>
<table border="1">
<tr>
<td>환자번호</td>
<td>환자명</td>
<td>검사명</td>
<td>검사시작일</td>
<td>검사상태</td>
<td>검사완료일</td>
<td>검사결과</td>
</tr>
<c:forEach var="r" items="${result}">
<tr>
<td><c:out value="${r.p_no}" /></td>
<td><c:out value="${r.p_name}" /></td>
<td><c:out value="${r.t_name}" /></td>
<td><fmt:formatDate value="${r.t_sdate}" pattern="yyyy년MM월dd일" /> </td>
<td><c:out value="${r.t_status}" /></td>
<td><fmt:formatDate value="${r.t_ldate}" pattern="yyyy년MM월dd일" /> </td>
<td><c:out value="${r.t_result}" /></td>
</tr>
</c:forEach>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

