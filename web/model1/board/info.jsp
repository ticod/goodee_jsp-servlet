<%@ page import="model.board.Board" %>
<%@ page import="model.board.BoardDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int num = 0;
    try {
        num = Integer.parseInt(request.getParameter("num"));
    } catch (NumberFormatException e) {}

    // num parameter가 제대로 넘어온 경우
    if (num != 0) {
        BoardDao dao = new BoardDao();
        Board board = dao.selectOne(num);
        dao.readcntAdd(num);
%>
<html>
<head>
    <title><%=board.getSubject()%>></title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<table>
    <caption>게시물 상세 보기</caption>
    <tr>
        <th style="width: 20%">글쓴이</th>
        <td><%=board.getName()%></td>
    </tr>
    <tr>
        <th>제목</th>
        <td><%=board.getSubject()%></td>
    </tr>
    <tr style="height: 30vh;">
        <th>내용</th>
        <td style="border-width: 1px; vertical-align: top; text-align: left;">
            <%=board.getContent()%>
        </td>
    </tr>
    <tr>
        <th>첨부파일</th>

        <td>
            <% if (board.getFile1() != null && !board.getFile1().equals("")) { %>
            <a href="./file/<%=board.getFile1()%>">
                <%=board.getFile1()%>
            </a>
            <% } else { %>
            &nbsp;
            <% } %>
        </td>

    </tr>
    <tr>
        <td colspan="2">
            <a href="replyform.jsp?num=<%=board.getNum()%>">[답변]</a>
            <a href="updateform.jsp?num=<%=board.getNum()%>">[수정]</a>
            <a href="deleteform.jsp?num=<%=board.getNum()%>">[삭제]</a>
            <a href="list.jsp">[목록]</a>
        </td>
    </tr>
</table>
</body>
</html>

<!-- 예외 처리 : num parameter가 존재하지 않는 경우 -->
<% } else { %>
<script>
    alert("잘못된 접근입니다.");
    location.href = "list.jsp";
</script>
<% } %>