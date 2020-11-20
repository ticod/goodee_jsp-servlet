<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="model.board.Board" %>
<%@ page import="model.board.BoardDao" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = application.getRealPath("/") + "model1/board/file/";
    File f = new File(path);
    if (!f.exists()) {
        f.mkdirs();
    }
    MultipartRequest multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "utf-8");
    Board board = new Board();
    board.setName(multi.getParameter("name"));
    board.setPass(multi.getParameter("pass"));
    board.setSubject(multi.getParameter("subject"));
    board.setContent(multi.getParameter("content"));
    board.setFile1(multi.getFilesystemName("file1"));
    BoardDao dao = new BoardDao();

    String msg = "게시물 등록 실패";
    String url = "writeform.jsp";

    int num = dao.maxNum();
    board.setNum(++num);
    board.setGrp(num);
    if (dao.insert(board)) {
        msg = "게시물 등록 성공";
        url = "list.jsp";
    }
%>
<script>
    alert("<%=msg%>");
    location.href = "<%=url%>"
</script>