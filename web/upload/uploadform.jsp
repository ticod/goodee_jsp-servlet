<%--
  Date: 2020-11-19
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 업로드 예제</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<form action="upload.jsp" method="post" enctype="multipart/form-data">
    <table>
        <tr>
            <th>올린 사람</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="title"></td>
        </tr>
        <tr>
            <th>파일</th>
            <td><input type="file" name="file1"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="전송"></td>
        </tr>
    </table>
</form>
</body>
</html>
