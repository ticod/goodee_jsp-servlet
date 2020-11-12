<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST FORM 2</title>
    <style>
        table {
            text-align: center;
        }
        td {
            width: 100px;
        }
        input[type=text] {
            width: 230px;
        }
    </style>
</head>
<body>
<%
    Date date = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<form action="test2.jsp" method="post">
    <input type="hidden" name="date" value="<%=sf.format(date) %>">
    <table>
        <tr>
            <td>방문자 :</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>제목 :</td>
            <td><input type="text" name="title"></td>
        </tr>
        <tr>
            <td>내용 :</td>
            <td><textarea name="description" cols="30" rows="10"></textarea></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="글쓰기"></td>
        </tr>
    </table>
</form>
</body>
</html>
