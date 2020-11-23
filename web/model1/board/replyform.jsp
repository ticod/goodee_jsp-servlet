<%@ page import="model.board.BoardDao" %>
<%@ page import="model.board.Board" %>
<%--
  Date: 2020-11-23
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    int num = 0;
    try {
        num = Integer.parseInt(request.getParameter("num"));
    } catch (NumberFormatException e) {}
%>
<% if (num == 0) { %>
<script>
    alert("잘못된 접근입니다");
    history.go(-1);
</script>
<% } else { %>
<%
    BoardDao dao = new BoardDao();
    Board board = dao.selectOne(num);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>답글 달기</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<form action="reply.jsp" method="post" name="f">
    <input type="hidden" name="num" value="<%=board.getNum()%>">
    <input type="hidden" name="grp" value="<%=board.getGrp()%>">
    <input type="hidden" name="grplevel" value="<%=board.getGrplevel()%>">
    <input type="hidden" name="grpstep" value="<%=board.getGrpstep()%>">
    <table>
        <caption>답글 등록</caption>
        <tr>
            <th>글쓴이</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="password" name="pass"></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="subject" value="RE:<%=board.getSubject()%>"></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea rows="15" name="content"></textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <a href="javascript:inputCheck()">[답글 등록]</a>
            </td>
        </tr>
    </table>
</form>
<script>
    function inputCheck() {
        const f = document.f;
        if (f.name.value === "") {
            alert("글쓴이를 입력하세요");
            f.name.focus();
            return false;
        }
        if (f.pass.value === "") {
            alert("비밀번호를 입력하세요");
            f.pass.focus();
            return false;
        }
        if (f.subject.value === "") {
            alert("제목을 입력하세요");
            f.subject.focus();
            return false;
        }
        if (f.content.value === "") {
            alert("내용을 입력하세요");
            f.content.focus();
            return false;
        }
        f.submit();
    }
</script>
</body>
</html>
<% } %>