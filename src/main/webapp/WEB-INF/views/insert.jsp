<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<section>
<h2>검사결과입력</h2>
<form name="frm" action="action.jsp" method="post">
<table border="1">
<tr>
<td>환자번호</td>
<td><input type="number" name="p_no" /> 예)1001</td>
</tr>
<tr>
<td>검사코드</td>
<td>
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
<td><input type="number" name="t_sdate" />예)20200101</td>
</tr>
<tr>
<td>검사상태</td>
<td>
<input type="radio" name="t_status" value="1" />검사중
<input type="radio" name="t_status" value="2" />검사완료
</td>
</tr>
<tr>
<td>검사완료일자</td>
<td><input type="number" name="t_ldate" />예)20200101</td>
</tr>
<tr>
<td>검사결과</td>
<td>
<input type="radio" name="t_result" value="X" />미입력
<input type="radio" name="t_result" value="P" />양성
<input type="radio" name="t_result" value="N" />음성
</td>
</tr>
<tr>
<td colspan="2">
<input type="button" value="검사결과등록" onclick="check()">
<input type="button" value="다시쓰기" onclick="reset()">
</td>
</tr>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>