<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="model.board.Board" %>
<%@ page import="model.board.BoardDao" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    BoardDao dao = new BoardDao();
    String path = application.getRealPath("/") + "model1/board/file/";
    File f = new File(path);
    if (!f.exists()) {
        f.mkdirs();
    }
    MultipartRequest multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "utf-8");
    int num = Integer.parseInt(multi.getParameter("num"));

    String msg = "수정에 실패하였습니다.";
    String url = "updateform.jsp?num=" + num;
%>
<% if (!multi.getParameter("pass").equals(dao.selectOne(num).getPass())) { %>
<script>
    alert("비밀번호가 틀렸습니다.");
    location.href = "updateform.jsp?num="<%=num%>;
</script>
<% } else { %>
<%
    Board board = new Board();
    board.setNum(num);
    board.setName(multi.getParameter("name"));
    board.setSubject(multi.getParameter("subject"));
    board.setContent(multi.getParameter("content"));
    board.setFile1(multi.getFilesystemName("file1"));

    if (board.getFile1() == null || board.getFile1().equals("")) {
        board.setFile1(multi.getParameter("file2"));
    }

    if (dao.update(board)) {
        msg = "수정 성공!";
        url = "info.jsp?num=" + num;
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>";
</script>
<% } %>