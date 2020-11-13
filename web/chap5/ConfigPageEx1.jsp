<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CONFIG/PAGE 객체</title>
</head>
<body>
<%
    Enumeration e = config.getInitParameterNames();
    while (e.hasMoreElements()) {
        String s = (String)e.nextElement();
        out.println(s + "=" + config.getInitParameter(s) + "<br>");
    }
%>
<hr>
<%
    if (page == this) {
        out.println("page 객체와 this 객체는 같은 객체임");
    }
%>
</body>
</html>
