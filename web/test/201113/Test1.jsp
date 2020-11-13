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
    int num1 = Integer.parseInt(request.getParameter("num1"));
    int num2 = Integer.parseInt(request.getParameter("num2"));
    String op = request.getParameter("op");
%>
<script>
    const num1 = <%=num1%>;
    const num2 = <%=num2%>;
    const op = "<%=op%>";
    const result = eval(num1 + op + num2); // 템플릿 리터럴 사용 안됨
    document.write(num1 + op + num2 + "=" + result);
</script>
</body>
</html>
