<%@ page import="model.board.BoardDao" %>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="board" class="model.board.Board" />
<jsp:setProperty name="board" property="*" />

<%
    BoardDao dao = new BoardDao();
    dao.grpStepAdd(board.getGrp(), board.getGrpstep());
    board.setNum(dao.maxNum() + 1);
    board.setGrplevel(board.getGrplevel() + 1);
    board.setGrpstep(board.getGrpstep() + 1);

    String msg = "답변 등록시 오류 발생";
    String url = "replyform.jsp?num=" + board.getNum();
    if (dao.insert(board)) {
        msg = "답변 등록 완료";
        url = "list.jsp";
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>"
</script>