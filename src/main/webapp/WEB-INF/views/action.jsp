<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ include file="DB.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("UTF-8");
String p_no = request.getParameter("p_no");
String t_code = request.getParameter("t_code");
String t_sdate = request.getParameter("t_sdate");
String t_status = request.getParameter("t_status");
String t_ldate = request.getParameter("t_ldate");
String t_result = request.getParameter("t_result");
String sql = "insert into tbl_result_202004 values(?,?,?,?,?,?)";
PreparedStatement pstmt = c.prepareStatement(sql);
pstmt.setString(1, p_no);
pstmt.setString(2, t_code);
pstmt.setString(3, t_sdate);
pstmt.setString(4, t_status);
pstmt.setString(5, t_ldate);
pstmt.setString(6, t_result);
ResultSet rs = pstmt.executeQuery();
%>
<jsp:forward page="index.jsp"></jsp:forward>