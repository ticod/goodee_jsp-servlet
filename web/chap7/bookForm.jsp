<%--
  Date: 2020-11-16
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>방명록</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<form action="book.jsp" method="post">
    <table>
        <caption>방명록</caption>
        <tr>
            <td>작성자</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>제목</td>
            <td><input type="text" name="title"></td>
        </tr>
        <tr>
            <td>내용</td>
            <td><textarea name="content" rows="5" cols="60"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="작성"></td>
        </tr>
    </table>
</form>
</body>
</html>
