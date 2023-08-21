<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
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
<h2>(지역별)검사건수통계</h2>
<form>
<table border="1">
<tr>
<td>지역코드</td>
<td>지역</td>
<td>검사건수</td>
</tr>
<%
request.setCharacterEncoding("UTF-8");
try {
	String sql = "select p_city, count(p_city) from tbl_patient_202004 group by p_city order by p_city";
	PreparedStatement pstmt = c.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()) {
		String city = rs.getString(1);
		if(city.equals("10")) {
			city = "서울";
		} else if(city.equals("20")) {
			city = "경기";
		} else if(city.equals("30")) {
			city = "강원";
		} else {
			city = "대구";
		}
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=city %></td>
<td><%=rs.getString(2) %></td>
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

