<%@ page import="model.member.MemberDao" %>
<%--
  Created by IntelliJ IDEA.
  User: Do Hun
  Date: 2020-11-20
  Time: 오전 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String email = request.getParameter("email");
    String tel = request.getParameter("tel");
    String id = new MemberDao().idSearch(email, tel);
    if (id == null) {
%>
<script>
    alert("아이디를 찾을 수 없습니다.");
    location.href = "idform.jsp";
</script>
<%
    } else {
        String printId = id.substring(0, id.length() - 2);
%>
<html>
<head>
    <title>아이디 찾기</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<table>
    <tr>
        <th>
            아이디
        </th>
        <td>
            <%=printId + "**"%>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <button onclick='idSubmit()'>아이디 전송</button>
        </td>
    </tr>
</table>
<script>
    function idSubmit() {
        const id = "<%=printId%>"
        const to = window.opener.document.f.id;
        to.value = id;
        window.close();
    }
</script>
</body>
</html>
<% } %>