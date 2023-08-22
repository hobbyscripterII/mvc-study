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
<h2>환자등록</h2>
<form:form modelAttribute="insertPatient" name="frm" action="p-result" method="post">
<!-- <form name="frm" action="p-result" method="post">  -->
<table border="1" class="table table-striped">
<tr>
<td class="td-name">환자번호</td>
<td class="input-td"><form:input path="p_no" type="text" name="p_no" value="${pmaxno}" /> </td>
</tr>
<tr>
<td class="td-name">환자이름</td>
<td class="input-td"><form:input path="p_name" class="input-w" type="text" name="p_name" /> <form:errors path="p_name" cssClass="errors-class input-w" /> </td>
</tr>
<tr>
<td class="td-name">생년월일</td>
<td class="input-td"><form:input path="p_birth" class="input-w" type="text" name="p_birth" placeholder="생년월일 8자리" /> <form:errors path="p_birth" cssClass="errors-class input-w" /> </td>
</tr>
<tr>
<td class="td-name">성별</td>
<td class="input-td">
<input type="radio" name="p_gender" value="M" />남자
<input type="radio" name="p_gender" value="F" style="margin-left: 130px;" />여자
<form:errors path="p_gender" cssClass="errors-class" cssStyle="margin-left: 3px" />
</td>
</tr>
<tr>
<td class="td-name">전화번호</td>
<td class="input-td">
	<form:select path="p_tel1" name="p_tel1">
	<option value="010">010</option>
	<option value="011">011</option>
	<option value="012">012</option>
	</form:select>
	<form:input path="p_tel2" type="text" name="p_tel2" class="input-phone" />
	<form:input path="p_tel3" type="text" name="p_tel3" class="input-phone" />
	<form:errors path="p_tel2" cssClass="errors-class" />
	<form:errors path="p_tel3" cssClass="errors-class" cssStyle="margin-left: 3px; margin-left: 227px" />
</td>
</tr>
<tr>
<td class="td-name">지역</td>
<td class="input-td">
	<form:select path="p_city" name="p_city" style="width: 223px">
		<option value="1">지역</option>
		<option value="10">서울</option>
		<option value="20">경기</option>
		<option value="30">강원</option>
		<option value="40">대구</option>
	</form:select>
	<form:errors path="p_city" cssClass="errors-class" />
</td>
</tr>
<tr>
<td colspan="2">
<input type="submit" class="btn btn-primary" value="환자등록">
<input type="button" class="btn btn-primary" value="다시쓰기" onclick="reset()">
</td>
</tr>
</table>
<!-- </form> -->
</form:form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
<!--
function check() {
	if(!frm.p_tel1.value) {
		alert("전화번호가 입력되지 않았습니다!")
		frm.p_tel1.focus();
		return false;
	} else if(!frm.p_tel2.value) {
		alert("전화번호가 입력되지 않았습니다!")
		frm.p_tel2.focus();
		return false;
	} else if(!frm.p_tel3.value) {
		alert("전화번호가 입력되지 않았습니다!")
		frm.p_tel3.focus();
		return false;
	} else {
		frm.submit();
		return true;
	}
}
-->
	
function reset() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
</script>
</body>
</html>