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
    <title>로그인</title>
    <%
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String msg = "아이디를 확인하세요";
        String url = "loginform.jsp";

        Member mem = new MemberDao().selectOne(id);

        if (mem != null) {
            if (pass.equals(mem.getPass())) {
                session.setAttribute("login", id);
                msg = mem.getName() + "님이 로그인했습니다.";
                url = "main.jsp";
            } else {
                msg = "비밀번호가 틀립니다.";
            }
        }
    %>
</head>
<body>
<script>
    alert('<%=msg%>');
    location.href = '<%=url%>';
</script>
</body>
</html>
