<%@ page import="model.MemberDao" %>
<%@ page import="model.Member" %><%--
  Date: 2020-11-18
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<jsp:useBean class="model.Member" id="member" scope="request"/>
<jsp:setProperty name="member" property="*" />
<%
    Member updateMember = member;
    MemberDao dao = new MemberDao();
    String urlId = member.getId();
    String msg = "수정 실패";
    String url = "updateform.jsp?id=" + urlId;
    if (((String)session.getAttribute("login")).equals("admin")) {
        member = dao.selectOne("admin");
    }
    String dbPassword = dao.selectOne(member.getId()).getPass();
    if (!member.getPass().equals(dbPassword)) {
        msg = "비밀번호를 확인하세요.";
    } else if (dao.update(updateMember) > 0) {
        msg = "수정 성공!";
        url = "info.jsp?id=" + urlId;
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>";
</script>