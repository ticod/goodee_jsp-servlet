<%@ page import="model.member.MemberDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String pw = new MemberDao().pwSearch(id, email, tel);
    if (pw == null) {
%>
%>
<script>
    alert("비밀번호를 찾을 수 없습니다.");
    location.href = "pwform.jsp";
</script>
<%
} else {
    String printPw = id.substring(2);
%>
<html>
<head>
    <title>비밀번호 찾기</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<table>
    <tr>
        <th>
            비밀번호
        </th>
        <td>
            <%="**" + printPw%>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <button onclick='window.close()'>닫기</button>
        </td>
    </tr>
</table>
</body>
</html>
<% } %>