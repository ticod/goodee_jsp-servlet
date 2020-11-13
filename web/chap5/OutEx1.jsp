<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>OUT EX 1</title>
</head>
<body>
<h3>out 객체는 response 객체의 출력 버퍼에 데이터를 저장할 수 있는 출력스트림 객체임</h3>
<%
    int sum = 0;
    for (int i = 1; i <= 10; i++) {
        sum += i;
%>
    1부터 <%=i %>까지의 부분합: <%=sum %> <br>
<%
    }
%>
1부터 10까지의 합: <%=sum %>
<hr>
<h3>out 방식</h3>
<%
    sum = 0;
    for (int i = 1; i <= 10; i++) {
        sum += i;
        out.println(String.format("1부터 %d까지의 부분합: %d<br>", i, sum));
    }
    out.println(String.format("1부터 10까지의 합: %d<br>", sum));
%>
</body>
</html>
