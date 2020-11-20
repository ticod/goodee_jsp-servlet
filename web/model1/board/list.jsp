<%@ page import="model.board.BoardDao" %>
<%@ page import="model.board.Board" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Do Hun
  Date: 2020-11-20
  Time: 오후 3:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    int pageNum = 1;
    try {
        pageNum = Integer.parseInt(request.getParameter("pageNum"));
    } catch (NumberFormatException e) {}
    int limit = 10;
    BoardDao dao = new BoardDao();
    int boardCount = dao.boardCount();
    List<Board> list = dao.list(pageNum, limit);
    int maxPage = (int)((double) boardCount / limit + 0.95);
    int startPage = ((int)(pageNum / 10.0 + 0.9) - 1) * 10 + 1;
    int endPage = startPage + 9;
    if (endPage > maxPage) endPage = maxPage;
%>
<html>
<head>
    <title>게시판</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<table>
    <caption>글 목록</caption>
    <% if (boardCount == 0) { %>
    <tr><td colspan="5">등록된 게시글이 없습니다</td></tr>
    <% } else { %>
    <tr><td colspan="5" style="text-align: right">글 개수: <%=boardCount%></td></tr>
    <% } %>
    <tr></tr>
    <tr>
        <th width="8%">번호</th>
        <th width="50%">제목</th>
        <th width="14%">작성자</th>
        <th width="17%">등록일</th>
        <th width="11%">조회수</th>
    </tr>
    <% for (Board b : list) { %>
    <tr>
        <td><%=b.getNum()%></td>
        <td style="text-align: left"> <a href="info.jsp?num=<%=b.getNum()%>"> <%=b.getSubject()%> </a> </td>
        <td><%=b.getName()%></td>
        <td><%=b.getRegdate()%></td>
        <td><%=b.getReadcnt()%></td>
    </tr>
    <% } %>
    <tr>
        <td colspan="5">
            <!-- 이전 페이지 -->
            <% if (pageNum <= 1) { %>
            [이전]
            <% } else { %>
            <a href="list.jsp?pageNum=<%=pageNum - 1%>">[이전]</a>
            <% } %>

            <!-- 페이지 목록 -->
            <% for (int a = startPage; a <= endPage; a++) { %>
                <% if (a == pageNum) { %>
                [<%=a%>]
                <% } else { %>
                <a href="list.jsp?pageNum=<%=a%>">[<%=a%>]</a>
                <% } %>
            <% } %>

            <!-- 다음 페이지 -->
            <% if (pageNum >= maxPage) { %>
            [다음]
            <% } else { %>
            <a href="list.jsp?pageNum=<%=pageNum + 1%>">[다음]</a>
            <% } %>
        </td>
    </tr>
    <tr>
        <td colspan="5" style="text-align: right;">
            <a href="writeform.jsp">[글쓰기]</a>
        </td>
    </tr>
</table>
</body>
</html>
