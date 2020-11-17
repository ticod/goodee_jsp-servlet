<%--
  Date: 2020-11-16
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>오류 페이지</title>
</head>
<body>
<h1>파라미터 name을 입력해주세요.</h1>
<h1>계속 오류 발생시 전산부로 전화 요망 <br>
담당자: 홍길동, 전화: 1234</h1>
<h2><%=exception.getMessage() %></h2>
<% exception.printStackTrace(response.getWriter()); %>
</body>
</html>
