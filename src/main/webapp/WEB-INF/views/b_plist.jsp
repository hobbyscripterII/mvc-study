<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="DB.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<td>지역</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try {
	String sql = "select p_no 환자번호, p_name 환자성명, " +
					"substr(p_birth,1,4)||'년'||substr(p_birth,5,2)||'월'||substr(p_birth,7,2)||'일' 생년월일, " +
					"case p_gender when 'M' then '남' else '여' end 성별, " +
					"p_tel1||'-'||p_tel2||'-'||p_tel3 전화번호, " +
					"case p_city when '10' then '서울' when '20' then '경기' when '30' then '강원' when '40' then '대구' end 지역 " +
					"from tbl_patient_202004 p";
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