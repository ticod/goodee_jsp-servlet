<%--
  Date: 2020-11-17
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    // 로그인 상태 : 현재 화면
    //             만약 로그인이 admin이라면 회원목록 보기 추가
    // 로그아웃 상태 : 로그인하세요 메세지 출력 후, loginform.jsp로 페이지 이동
    String login = (String)session.getAttribute("login");
    if (login != null) {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 관리</title>
</head>
<body>
<h3><%=login%> 로그인 되었습니다.</h3>
<h3><a href="javascript:logoutCheck()">로그아웃</a></h3>
<h3><a href="info.jsp?id=<%=login%>">회원 정보 보기</a></h3>
<% } %>
<% if (login.equals("admin")) { %>
    <h3><a href="list.jsp">회원 목록 보기</a></h3>
<% } %>
<script>
    function logoutCheck() {
        if (confirm('로그아웃하시겠습니까?')) {
            alert('로그아웃되셨습니다');
            location.href = 'logout.jsp';
        }
    }
</script>
</body>
</html>
