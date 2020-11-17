<%--
  Date: 2020-11-16
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>방명록 내용 보기</title>
    <link rel="stylesheet" href="../css/main.css">
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="book" class="chap7.Book" scope="request" />
    <!--
    chap7.Book book = new chap7.Book();
    -->
    <jsp:setProperty property="*" name="book" />
    <!--
    property="*" : 파라미터 이름이 *과 같은 값을
    class="chap7.Book" : Book 객체에 저장한다. = 클래스의 같은 멤버에 매핑된다.
    -->
    <jsp:setProperty property="name" param="writer" name="book" />
    <!--
    만약 writer라는 이름의 파라미터가 있다면
    book 인스턴스의 name에 넣는다.
    -->
</head>
<body>
<table>
    <caption>방명록 조회</caption>
    <tr>
        <td>작성자</td>
        <td><jsp:getProperty name="book" property="name" /></td>
    </tr>
    <tr>
        <td>제목</td>
        <td><jsp:getProperty name="book" property="title" /></td>
    </tr>
    <tr>
        <td>내용</td>
        <td><jsp:getProperty name="book" property="content" /></td>
    </tr>
</table>
</body>
</html>
