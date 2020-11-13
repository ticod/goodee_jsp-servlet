<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 12:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SESSION 객체</title>
</head>
<body>
<h3>session 정보</h3>
<% session.setMaxInactiveInterval(5); // 세션 유지시간 5초 %>
isNew() : <%=session.isNew() %> -> 새로운 세션인지? <br>
getCreationTime() : <%=session.getCreationTime() %> -> 생성 시간<br>
getLastAccessedTime() : <%=session.getLastAccessedTime() %> -> 최종 접속 시간 <br>
getId() : <%=session.getId() %> -> 세션 아이디 <br>
</body>
</html>
