<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RESPONSE EX 1</title>
</head>
<body>
<h2>지금 작성중인 내용은 화면에 출력되지 않습니다</h2>
<h3>
    response 객체는 브라우저에 결과를 전달해 주는 객체입니다. <br>
    내부에 출력 버퍼를 가지고 있어서, 브라우저에 결과를 전달합니다. <br>
    response 객체를 통해 브라우저에서 다른 페이지를 다시 요청하도록 할 수 있습니다. <br>
    이러한 기능을 redirect라고 합니다. <br>
</h3>
<%
    response.sendRedirect("ResponseEx2.jsp");
%>
</body>
</html>
