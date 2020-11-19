<%@ page import="model.MemberDao" %>
<%--
  Date: 2020-11-19
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String sessionId = (String)session.getAttribute("login");
    String msg = "";
    String url = "";

    if (sessionId == null) {
        msg = "로그인하세요";
        url = "loginform.jsp";
%>
<script>
    alert("<%=msg%>");
    if (window.opener === null) {
        location.href = "<%=url%>";
    } else {
        window.opener.location.href = "<%=url%>";
    }
</script>
<%
    } else {
        request.setCharacterEncoding("utf-8");
        MemberDao dao = new MemberDao();
        String currentPassword = request.getParameter("pass");
        String changePassword = request.getParameter("chgpass");
        String dbPassword = dao.selectOne(sessionId).getPass();

        if (!currentPassword.equals(dbPassword)) {
            msg = "비밀번호가 다릅니다";
            url = "passwordform.jsp";
        } else {
            if (dao.updatePassword(sessionId, changePassword) > 0) {
                msg = "비밀번호 수정 성공";
                url = "info.jsp?id=" + sessionId;
            } else {
                msg = "비밀번호 수정 실패";
                url = "updateform.jsp?id=" + sessionId;
            } %>
<script>
    alert("<%=msg%>");
    window.opener.location.href = "<%=url%>";
    window.close();
</script>
<% }} %>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>"
</script>