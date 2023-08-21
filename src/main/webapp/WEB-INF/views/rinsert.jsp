<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form name="frm" action="r-result" method="post">
<table border="1" class="table table-striped">
<tr>
<td>환자번호</td>
<td class="input-td">
<select name="p_no">
	<c:forEach var="list" items="${list}">
		<option value="${list.p_no}"><c:out value="${list.p_no}" /></option>
	</c:forEach>
</select>
</td>
</tr>
<tr>
<td>검사코드</td>
<td class="input-td">
	<select name="t_code">
		<option value="null">검사명</option>
		<option value="T001" >[T001]결핵</option>
		<option value="T002" >[T002]장티푸스</option>
		<option value="T003" >[T003]수두</option>
		<option value="T004" >[T004]홍역</option>
		<option value="T005" >[T005]콜레라</option>
	</select>
</td>
</tr>
<tr>
<td>검사시작일자</td>
<td class="input-td"><input type="date" name="t_sdate" />예)20200101</td>
</tr>
<tr>
<td>검사상태</td>
<td class="input-td">
<input type="radio" name="t_status" value="1" />검사중
<input type="radio" name="t_status" value="2" />검사완료
</td>
</tr>
<tr>
<td>검사완료일자</td>
<td class="input-td"><input type="date" name="t_ldate" />예)20200101</td>
</tr>
<tr>
<td>검사결과</td>
<td class="input-td">
<input type="radio" name="t_result" value="X" />미입력
<input type="radio" name="t_result" value="P" />양성
<input type="radio" name="t_result" value="N" />음성
</td>
</tr>
<tr>
<td colspan="2">
<input type="button" class="btn btn-primary" value="검사결과등록" onclick="check()">
<input type="button" class="btn btn-primary" value="다시쓰기" onclick="reset()">
</td>
</tr>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript">
function check() {
	if(!frm.p_no.value) {
		alert("환자번호가 입력되지 않았습니다!");
	} else if(frm.t_code.value == "null") {
		alert("검사코드가 선택되지 않았습니다!");
	} else if(!frm.t_sdate.value) {
		alert("검사시작일자가 입력되지 않았습니다!");
	} else if(frm.t_status[0].checked == false && frm.t_status[1].checked == false) {
		alert("검사상태가 선택되지 않았습니다!");
	} else if(!frm.t_ldate.value) {
		alert("검사완료일자가 입력되지 않았습니다!");
	} else if(frm.t_result[0].checked == false && frm.t_result[1].checked == false && frm.t_result[2].checked == false) {
		alert("검사결과가 선택되지 않았습니다!");
	} else {
		alert("검사결과가 정상적으로 등록되었습니다!");
		document.frm.submit();
	}
}

function reset() {
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.reset();
}
</script>
</body>
</html>