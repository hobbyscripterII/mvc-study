<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="DB.jsp" %>
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
<%
request.setCharacterEncoding("UTF-8");
try {
	String sql = "select p.p_no 환자번호, p.p_name 환자명, l.t_name 검사명, " +
					"to_char(r.t_sdate, 'yyyy-MM-dd') 검사시작일, " +
					"case r.t_status when '1' then '검사중' when '2' then '검사완료' end 검사상태, " +
					"to_char(r.t_ldate, 'yyyy-MM-dd') 검사완료일, " +
					"case t_result when 'X' then '미입력' when 'P' then '양성' when 'N' then '음성' end 검사결과 " +
					"from tbl_patient_202004 p, tbl_result_202004 r, tbl_lab_test_202004 l " +
					"where p.p_no = r.p_no and r.t_code = l.t_code " +
					"group by p.p_no, p.p_name, l.t_name, r.t_sdate, r.t_status, r.t_ldate, r.t_result " +
					"order by p.p_no"; 
PreparedStatement pstmt = c.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
while(rs.next()) {
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7) %></td>
</tr>
<%
}
} catch(Exception e) {
	e.printStackTrace();
}
%>
</table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

