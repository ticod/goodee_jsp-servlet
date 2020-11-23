<%@ page import="model.board.BoardDao" %>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("utf-8");
    String pass = request.getParameter("pass");
    int num = 0;
    try {
        num = Integer.parseInt(request.getParameter("num"));
    } catch (NumberFormatException e) {}

    String msg = "잘못된 접근입니다.";
    String url = "list.jsp";
    if (num != 0) {
        BoardDao dao = new BoardDao();
        if (!pass.equals(dao.selectOne(num).getPass())) {
            msg = "비밀번호가 틀렸습니다.";
            url = "deleteform.jsp?num=" + num;
        } else {
            if (dao.delete(num)) {
                msg = "삭제 성공";
            } else {
                msg = "삭제 실패";
                url = "deleteform.jsp?num=" + num;
            }
        }
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>";
</script>
