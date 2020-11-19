<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>

<%--
  Date: 2020-11-19
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 업로드 예제</title>
</head>
<body>
<%
    String uploadPath = application.getRealPath("/") + "upload/";
    int size = 10 * 1024 * 1024;
    File f = new File(uploadPath);
    if (!f.exists()) {
        f.mkdirs();
    }
    MultipartRequest multi = new MultipartRequest(request, uploadPath, size, "utf-8");
    String name = multi.getParameter("name");
    String title = multi.getParameter("title");
    String fname = multi.getFilesystemName("file1");
%>
업로드 위치: <%=uploadPath%> <br>
올린사람: <%=name%> <br>
제목: <%=title%> <br>
파일: <a href="<%=fname%>"><%=fname%></a> <br>
</body>
</html>
