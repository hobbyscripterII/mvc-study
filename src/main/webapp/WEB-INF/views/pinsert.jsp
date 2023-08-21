<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<form name="frm" action="p-result" method="post">
<table border="1" class="table table-striped">
<tr>
<td>환자번호</td>
<td class="input-td"><input type="text" name="p_no" value="${p_maxNo}" readonly /></td>
</tr>
<tr>
<td>환자이름</td>
<td class="input-td"><input type="text" name="p_name" /></td>
</tr>
<tr>
<td>생년월일</td>
<td class="input-td"><input type="number" name="p_birth" />예)20200101</td>
</tr>
<tr>
<td>성별</td>
<td class="input-td">
<input type="radio" name="p_gender" value="M" />남자
<input type="radio" name="p_gender" value="F" />여자
</td>
</tr>
<tr>
<td>전화번호</td>
<td class="input-td">
	<select name="p_tel1">
	<option value="010">010</option>
	<option value="011">011</option>
	<option value="012">012</option>
	</select>
	<input type="text" name="p_tel2" />
	<input type="text" name="p_tel3" />
</td>
</tr>
<tr>
<td>지역</td>
<td class="input-td">
	<select name="p_city">
		<option value="null">지역</option>
		<option value="10">서울</option>
		<option value="20">경기</option>
		<option value="30">강원</option>
		<option value="40">대구</option>
	</select>
</td>
</tr>
<tr>
<td colspan="2">
<input type="button" class="btn btn-primary" value="환자등록" onclick="check()">
<input type="button" class="btn btn-primary" value="다시쓰기" onclick="reset()">
</td>
</tr>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
function check() {
	if(!frm.p_name.value) {
		alert("환자 이름이 입력되지 않았습니다!")
		frm.p_name.focus();
		return false;
	} else if(!frm.p_birth.value) {
		alert("생년월일이 입력되지 않았습니다!")
		frm.p_birth.focus();
		return false;
	} else if(frm.p_gender[0].checked == false && frm.p_gender[1].checked == false) {
		alert("성별이 선택되지 않았습니다!")
		frm.p_gender.focus();
		return false;
	} else if(!frm.p_tel1.value) {
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
	} else if(frm.p_city.value == "null") {
		alert("지역이 선택되지 않았습니다!")
		frm.p_city.focus();
		return false;
	} else {
		frm.submit();
		return true;
	}
}

function reset() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
</script>
</body>
</html>