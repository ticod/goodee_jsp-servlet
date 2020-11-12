<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST 1</title>
</head>
<body>
<%
    int num = Integer.parseInt(request.getParameter("num"));
    int sum = 0;
    int oddSum = 0;
    int evenSum = 0;
    for (int i = 1; i <= num; i++) {
        sum += i;
        if ((i & 1) == 0) {
            evenSum += i;
        } else {
            oddSum += i;
        }
    }
%>
100까지의 합: <%=sum %> <br>
100까지의 홀수 합: <%=oddSum %> <br>
100까지의 짝수 합: <%=evenSum %> <br>
</body>
</html>
