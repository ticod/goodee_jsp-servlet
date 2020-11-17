<%@ page import="model.MemberDao" %><%--
  Date: 2020-11-17
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!--
1. 파라미터 정보를 model.Member 객체에 저장 => useBean
2. Member 객체 정보를 db에 추가
3. 가입 성공: loginform.jsp로 이동
   가입 실패: joinform.jsp로 이동
-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean class="model.Member" id="member" scope="request" />
    <jsp:setProperty name="member" property="*" />
    <%
        MemberDao dao = new MemberDao();
        int result = dao.insert(member);
        String msg = "회원가입 실패";
        String url = "joinform.jsp";
        if (result > 0) {
            msg = member.getName() + "님 회원가입 완료";
            url = "loginform.jsp";
        }
    %>
</head>
<body>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>";
</script>
</body>
</html>
