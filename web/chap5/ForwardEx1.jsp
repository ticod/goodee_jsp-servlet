<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오전 11:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FORWARD EX 1</title>
</head>
<body>
<h2>forward 하는 페이지입니다. 이 내용은 화면에 출력되지 않습니다.</h2>
<% pageContext.forward("ForwardEx2.jsp"); %>
</body>
</html>
