<%@ page import="model.member.MemberDao" %>
<%@ page import="model.member.Member" %><%--
  Date: 2020-11-18
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("utf-8");
    String msg = null;
    String url = null;
    MemberDao dao = new MemberDao();
    String parameterId = request.getParameter("id");
    String parameterPass = request.getParameter("pass");
    String sessionId = (String)session.getAttribute("login");

    if (sessionId == null) {
        msg = "로그인해주세요";
        url = "loginform.jsp";
    } else if (parameterId == null) {
        msg = "잘못된 접근입니다";
        url = "main.jsp";
    } else if (parameterId.equals("admin")) {
        msg = "잘못된 접근입니다 - ADMIN";
        url = "main.jsp";
    } else {
        boolean isAdmin = sessionId.equals("admin");
        Member target = (isAdmin) ? dao.selectOne(sessionId) : dao.selectOne(parameterId);
        boolean checkPass = target.getPass().equals(parameterPass);

        if (!checkPass) {
            msg = "비밀번호를 확인해주세요";
            url = "deleteform.jsp?id=" + parameterId;
        } else {
            if (dao.delete(parameterId) > 0) {
                if (isAdmin) {
                    msg = "삭제 성공";
                    url = "list.jsp";
                } else {
                    msg = "탈퇴 성공";
                    url = "loginform.jsp";
                    session.invalidate();
                }
            } else {
                if (isAdmin) {
                    msg = "삭제 실패. 관리자에게 문의하세요";
                    url = "list.jsp";
                } else {
                    msg = "탈퇴 실패. 관리자에게 문의하세요";
                    url = "info.jsp?id=" + sessionId;
                }
            }
        }
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>";
</script>