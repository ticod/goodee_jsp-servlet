<%--
	1. 해당 jsp 요청 (request)
	2. WAS 서버
	   - currentTime.jsp -> 서블릿으로 변경 -> 컴파일
	                     -> 실행 -> 응답 (response)
 --%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>현재 시간</title>
</head>
<body>
<%
    Calendar c = Calendar.getInstance();
    int h = c.get(Calendar.HOUR_OF_DAY);
    int m = c.get(Calendar.MINUTE);
    int s = c.get(Calendar.SECOND);
%>
<h1>현재 시간은 <%=h%>시 <%=m%>분 <%=s%>초 입니다.</h1>
</body>
</html>