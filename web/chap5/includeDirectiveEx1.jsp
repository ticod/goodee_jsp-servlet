<%--

--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>include 지시어 에제</title>
</head>
<body>
    <%
        String msg = "includeDirectiveEx1.jsp 페이지의 msg 변수";
    %>
    <h1>includeDirectiveEx1.jsp입니다.</h1>
    <%@ include file="IncludeDirectiveEx2.jsp"%>
    <h2>include Directive (지시어)를 이용하여 다른 페이지를 포함 할 수 있습니다.
    두 개의 jsp페이지는 하나의 서블릿으로 변환되므로 변수의 공유가 가능합니다.</h2>
</body>
</html>
