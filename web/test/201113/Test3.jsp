<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST 3</title>
</head>
<body>
<%
    String date = (String) session.getAttribute("date");
    session.removeAttribute("date");
//    session.invalidate(); // 현재 session 객체를 제거하고, 새로운 session 객체로 변경
    if (date == null) {
%>
<script>
    alert("등록된 날짜가 없습니다.")
    location.href='Test2.jsp'  // history.go(-1)은 세션에 바로 저장 안되는 버그 있음
</script>
<% } %>
반갑습니다. 등록된 날짜: <%=date %>
</body>
</html>
