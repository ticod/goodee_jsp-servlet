<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST 2</title>
</head>
<body>
<%
    String currentDate = (String) session.getAttribute("date");
    if (currentDate == null) {
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E");
        currentDate = sf.format(date);
        session.setAttribute("date", currentDate);
    }
    out.print("등록된 날짜: " + currentDate);
%>
<a href="Test3.jsp">Test3.jsp</a>
</body>
</html>
