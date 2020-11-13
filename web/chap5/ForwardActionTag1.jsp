<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 3:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FORWARD ACTION 태그 예제</title>
</head>
<body>
<h3>이 페이지는 ForwardActionTag2.jsp로 forward됩니다. <br>
    이 파일의 내용은 출력되지 않습니다.</h3>
<jsp:forward page="ForwardActionTag2.jsp">
    <jsp:param value="****" name="test" />
    <jsp:param value="forward test" name="add" />
</jsp:forward>
</body>
</html>
