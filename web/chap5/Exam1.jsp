<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exam 1</title>
</head>
<body>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    int kbn = Integer.parseInt(request.getParameter("kbn"));
    int sum = 0;

    switch (kbn) {
        case 0:
            for (int i = 0; i <= num; i++) {
                sum += i;
            }
            break;
        case 1:
            for (int i = 1; i <= num; i += 2) {
                sum += i;
            }
            break;
        case 2:
            for (int i = 0; i <= num; i += 2) {
                sum += i;
            }
            break;
    }

    for (int i = 1; i <= num; i++) {

    }
%>
더한 값은 <%=sum %>입니다.
</body>
</html>
