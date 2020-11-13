<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오전 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>PAGE CONTEXT EX1</title>
</head>
<body>
<h2>pageContext 객체: 현재 페이지의 자원을 관리하는 객체</h2>
<%
    if (request == pageContext.getRequest()) {
%>
request == pageContext.getRequest() <br>
<%
    }
%><%
    if (response == pageContext.getResponse()) {
%>
response == pageContext.getResponse() <br>
<%
    }
%><%
    if (session == pageContext.getSession()) {
%>
session == pageContext.getSession() <br>
<%
    }
%>
</body>
</html>
