<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST 2</title>
    <style>
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String title = request.getParameter("title");
    String description = request.getParameter("description");
    String date = request.getParameter("date");
%>
<table border="1">
    <caption>방명록</caption>
    <tr>
        <td>방문자</td>
        <td><%=name %></td>
    </tr>
    <tr>
        <td>제목</td>
        <td><%=title %></td>
    </tr>
    <tr>
        <td>내용</td>
        <td><%=description %></td>
    </tr>
    <tr>
        <td>등록일</td>
        <td><%=date %></td>
    </tr>
</table>
</body>
</html>
