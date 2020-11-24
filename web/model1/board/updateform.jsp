<%@ page import="model.board.Board" %>
<%@ page import="model.board.BoardDao" %>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    int num = 0;
    try {
        num = Integer.parseInt(request.getParameter("num"));
    } catch (NumberFormatException e) {}
    Board board = new BoardDao().selectOne(num);
%>
<% if (num != 0) { %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 수정</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<form action="update.jsp" method="post" enctype="multipart/form-data" name="f">
    <input type="hidden" name="num" value="<%=board.getNum()%>">
    <input type="hidden" name="file2" value="<%=board.getFile1() == null ? "" : board.getFile1()%>">
    <table>
        <caption>게시글 수정</caption>
        <tr>
            <th style="width:20%">글쓴이</th>
            <td><input type="text" name="name" value="<%=board.getName()%>"></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><input type="password" name="pass"></td>
        </tr>
        <tr>
            <th>제목</th>
            <td><input type="text" name="subject" value="<%=board.getSubject()%>"></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea rows="15" name="content" value="<%=board.getContent()%>"></textarea></td>
        </tr>
        <tr>
            <th>첨부파일</th>
            <td style="text-align: left;">
                <% if (board.getFile1() != null && !board.getFile1().equals("")) { %>
                <div id="fileDesc">
                    <%=board.getFile1()%>
                    <a href="javascript:fileDelete()">[첨부파일 삭제]</a>
                </div>
                <% } %>
                <input type="file" name="file1">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <a href="javascript:inputCheck()">[게시물 등록]</a>
                <a href="list.jsp">[목록]</a>
            </td>
        </tr>
    </table>
</form>
<script>
    function fileDelete() {
        document.f.file2.value = "";
        fileDesc.style.display = 'none';
    }

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
<% } else { %>
<script>
    alert("잘못된 접근입니다");
    history.go(-1);
</script>
<% } %>