<%--
  Date: 2020-11-18
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String parameterId = request.getParameter("id");
    String sessionId = (String)session.getAttribute("login");
    // 로그아웃 상태인 경우
    if (sessionId == null) { %>
<script>
alert("로그인해주세요");
location.href = "loginform.jsp";
</script>

<!-- 관리자가 아니면서 본인의 계정이 아닌 경우 -->
<% } else if (!sessionId.equals("admin") && !parameterId.equals(sessionId) || parameterId.equals("admin")) { %>
<script>
alert("잘못된 접근입니다");
location.href = "main.jsp";
</script>

<!-- 예외가 아닐 경우 -->
<% } else { %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>삭제 페이지</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<form action="delete.jsp" method="post" name="f" onsubmit="return inputCheck(this)">
    <input type="hidden" name="id" value="<%=parameterId%>">
    <table style="margin-top:30vh; margin-left:15vw; max-width:70vw;">
        <caption>비밀번호 입력</caption>
        <tr>
            <th>비밀번호</th>
            <td><input type="password" name="pass"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="탈퇴하기">
            </td>
        </tr>
    </table>
</form>
<script>
function inputCheck(f) {
    if (f.pass.value === "") {
        alert("비밀번호를 입력하세요");
        f.pass.focus();
        return false;
    }
}
</script>
</body>
</html>
<% } %>