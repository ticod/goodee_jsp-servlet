<%--
  Date: 2020-11-19
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>원본 이미지 올리기</title>
</head>
<body>
<form action="thumbnail.jsp" method="post" enctype="multipart/form-data">
원본이미지: <input type="file" name="picture">
    <input type="submit" value="썸네일 이미지 생성">
</form>
</body>
</html>
