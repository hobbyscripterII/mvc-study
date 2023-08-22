<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h2>검사결과입력</h2>
<form:form modelAttribute="insertResult" name="frm" action="r-result" method="post">
<table border="1" class="table table-striped">
<tr>
<td class="td-name">환자번호</td>
<td class="input-td">
<form:select path="p_no" name="p_no" style="width: 220px">
	<option value="0">환자번호</option>
	<c:forEach var="pno" items="${pno}">
	<option value="${pno.p_no}"><c:out value="${pno.p_no}" /></option>
	</c:forEach>
</form:select>
<form:errors path="p_no" cssClass="errors-class input-w" />
</td>
</tr>
<tr>
<td class="td-name">검사코드</td>
<td class="input-td">
	<form:select path="t_code" name="t_code" style="width: 220px">
		<option value=" ">검사코드</option>
		<c:forEach var="p_city" items="${p_city}">
		<option value="${p_city.p_citycode}" ><c:out value="${p_city.p_city}" /></option>
		</c:forEach>
	</form:select>
	<form:errors path="t_code" cssClass="errors-class input-w" />
</td>
</tr>
<tr>
<td class="td-name">검사시작일자</td>
<td class="input-td"><form:input path="t_sdate" type="date" name="t_sdate" />예)20200101 <form:errors path="t_sdate" cssClass="errors-class input-w" /> </td>
</tr>
<tr>
<td class="td-name">검사상태</td>
<td class="input-td">
<input type="radio" name="t_status" value="1" />검사중
<input type="radio" name="t_status" value="2" style="margin-left: 90px" />검사완료
<form:errors path="t_status" cssClass="errors-class input-w" />
</td>
</tr>
<tr>
<td class="td-name">검사완료일자</td>
<td class="input-td"><form:input path="t_ldate" type="date" name="t_ldate" />예)20200101 <form:errors path="t_ldate" cssClass="errors-class input-w" /> </td>
</tr>
<tr>
<td class="td-name">검사결과</td>
<td class="input-td">
<input type="radio" name="t_result" value="X" />미입력
<input type="radio" name="t_result" value="P" style="margin-left: 37px" />양성
<input type="radio" name="t_result" value="N" style="margin-left: 35px" />음성
<form:errors path="t_result" cssClass="errors-class input-w" />
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" class="btn btn-primary" value="검사결과등록">
<input type="button" class="btn btn-primary" value="다시쓰기" onclick="reset()">
</td>
</tr>
</table>
</form:form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
function reset() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
</script>
</body>
</html>