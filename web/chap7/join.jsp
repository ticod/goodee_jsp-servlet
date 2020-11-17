<%--
  Date: 2020-11-16
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입 화면</title>
    <link rel="stylesheet" href="../css/main.css">
    <% request.setCharacterEncoding("utf-8"); %>
    <!--
    age는 int형으로 자동 형변환됨
    -->
    <jsp:useBean id="join" class="chap7.Member" />
    <jsp:setProperty property="*" name="join" />
</head>
<body>
<table>
    <caption>회원 정보</caption>
    <tr>
        <td>아이디</td>
        <td><jsp:getProperty property="id" name="join" /></td>
    </tr>
    <tr>
        <td>비밀번호</td>
        <td><jsp:getProperty property="pass" name="join" /></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><jsp:getProperty property="name" name="join" /></td>
    </tr>
    <tr>
        <td>성별</td>
        <td>
            <jsp:getProperty property="gender" name="join" />
            <%=join.getGender() == 1 ? ", 남자" : ", 여자"%>
        </td>
    </tr>
    <tr>
        <td>성별 2</td>
        <td>
            <jsp:getProperty property="gender2" name="join" />
        </td>
    </tr>
    <tr>
        <td>나이</td>
        <td><jsp:getProperty property="age" name="join" /></td>
    </tr>
    <tr>
        <td>이메일</td>
        <td><jsp:getProperty property="email" name="join" /></td>
    </tr>
</table>
</body>
</html>
