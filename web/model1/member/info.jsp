<%@ page import="model.member.Member" %>
<%@ page import="model.member.MemberDao" %><%--
  Date: 2020-11-17
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 보기</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<%  request.setCharacterEncoding("utf-8");
    String parameterId = request.getParameter("id");
    String sessionId = (String)session.getAttribute("login");
    Member member =  new MemberDao().selectOne(parameterId);
    if (sessionId == null) { %>
    <script>
        alert('로그인하세요.');
        location.href = 'loginform.jsp';
    </script>
<% } else if (!sessionId.equals("admin") && !sessionId.equals(parameterId)) { %>
    <script>
        alert('내 정보 조회만 가능합니다.');
        location.href = 'main.jsp';
    </script>
<% } else if (member == null) { %>
    <script>
        alert('잘못된 입력입니다.')
        history.go(-1);
    </script>
<% } else { %>
    <table>
        <caption>회원 정보 보기</caption>
        <tr>
            <td rowspan="7" width="30%"><img src="/picture/<%=member.getPicture()%>" width="200" height="210"></td>
            <th>아이디</th>
            <td><%=member.getId()%></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><%=member.getName()%></td>
        </tr>
        <tr>
            <th>성별</th>
            <td><%=member.getGender() == 1 ? "남" : "여"%></td>
        </tr>
        <tr>
            <th>전화번호</th>
            <td><%=member.getTel()%></td>
        </tr>
        <tr>
            <th>이메일</th>
            <td><%=member.getEmail()%></td>
        </tr>
        <tr>
            <td colspan="2">
                <a href="updateform.jsp?id=<%=parameterId%>">[수정]</a>
                <% if (!sessionId.equals("admin") && !parameterId.equals("admin")) { %>
                <a href="deleteform.jsp?id=<%=parameterId%>">[탈퇴]</a>
                <% } %>
                <a href="main.jsp">[돌아가기]</a>
            </td>
        </tr>
    </table>
<% } %>
</body>
</html>
