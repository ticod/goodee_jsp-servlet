<%--
  Date: 2020-11-19
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 사진 등록</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<h3>사진 업로드</h3>
<table>
    <tr>
        <td><img src="" id="preview"></td>
    </tr>
    <tr>
        <td>
            <form action="picture.jsp" method="post" enctype="multipart/form-data">
                <input type="file" name="picture" id="imageFile" accept="image/*">
                <input type="submit" value="사진등록">
            </form>
        </td>
    </tr>
</table>
<script>
    const imageFile = document.querySelector('#imageFile');
    const preview = document.querySelector('#preview');

    imageFile.addEventListener('change', (event) => {
       const getFile = event.target.files;
       const reader = new FileReader();
       reader.onload = ((img) => {
           return function(event) {
               img.src = event.target.result;
           }
       })(preview);
       if (getFile) {
           reader.readAsDataURL(getFile[0]);
       }
    });
</script>
</body>
</html>
