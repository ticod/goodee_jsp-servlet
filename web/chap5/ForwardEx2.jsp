<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FORWARD EX 2</title>
</head>
<body>
<h2>forward ex2 페이지입니다</h2>
<%=request.getParameter("id") %> <br>
forward ex1 페이지를 요청하면 이 페이지가 출력됩니다.
하지만 url은 ForwardEx1.jsp로 남아있습니다.
</body>
</html>
