<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h2>로그인</h2>
<form:form modelAttribute="member" name="frm" action="login" method="post">
<table border="1" class="table table-striped">
<tr>
<td class="td-name">아이디</td>
<td class="input-td"><form:input path="id" type="text" name="id" /> <form:errors path="id" cssClass="errors-class input-w" /> </td>
</tr>
<tr>
<td class="td-name">패스워드</td>
<td class="input-td"><form:input path="pwd" type="password" name="id" /> <form:errors path="pwd" cssClass="errors-class" /> </td>
</tr>
<tr>
<td colspan="2">
<input type="submit" class="btn btn-primary" value="로그인">
</td>
</tr>
</table>
</form:form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>

