<%--
  Created by IntelliJ IDEA.
  User: Do Hun
  Date: 2020-11-20
  Time: 오전 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<form action="id.jsp" method="post">
<table>
    <tr>
        <th>이메일</th>
        <td><input type="text" name="email"></td>
    </tr>
    <tr>
        <th>전화번호</th>
        <td><input type="text" name="tel"></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="아이디 찾기"></td>
    </tr>
</table>
</form>
</body>
</html>
