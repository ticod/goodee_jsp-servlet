<%@ page import="model.board.BoardDao" %>
<%@ page import="model.board.Board" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
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
    // 게시글 수: 1~10/1 11~20/2
    // 10으로 나누었을 때 -> 0 ~ 1 / 1.xx ~ 2 ...
    // 즉, 1보다 작은 수인 0.95를 더해주고, 소숫점을 잘라주는 방식으로 페이징
    int maxPage = (int)((double) boardCount / limit + 0.95);
    int startPage = ((int)(pageNum / 10.0 + 0.9) - 1) * 10 + 1;
    int endPage = startPage + 9;
    if (endPage > maxPage) endPage = maxPage;

    int num = boardCount - (limit * (pageNum - 1));// 조회번호, DB의 id를 사용자에게 굳이 보여줄 필요는 없음

    SimpleDateFormat sfDay = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat sfTime = new SimpleDateFormat("HH:mm:ss");
    String today = sfDay.format(new Date());
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
        <td><%=num--%></td>
        <td style="text-align: left">
            <span>
            <% if (b.getFile1() == null || b.getFile1().trim().equals("")) { %>
            &nbsp; &nbsp;
            <% } else { %>
            <a style="text-decoration: none;" href="file/<%=b.getFile1()%>">@</a>
            <% } %>
            </span>
            <span>
                <% if (b.getGrplevel() > 0) { %>
                    <% for (int i = 0; i < b.getGrplevel() - 1; i++) { %>
                    &nbsp;&nbsp;
                    <% } %>
                └
                <% } %>
                <a href="info.jsp?num=<%=b.getNum()%>"> <%=b.getSubject()%> </a>
            </span>
        </td>
        <td><%=b.getName()%></td>
        <td>
            <% if (today.equals(sfDay.format(b.getRegdate()))) { %>
            <%=sfTime.format(b.getRegdate())%>
            <% } else { %>
            <%=sfDay.format(b.getRegdate())%>
            <% } %>
        </td>
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
    <% } %>
    <tr>
        <td colspan="5" style="text-align: right;">
            <a href="writeform.jsp">[글쓰기]</a>
        </td>
    </tr>
</table>
</body>
</html>
