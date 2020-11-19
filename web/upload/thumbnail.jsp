<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.image.BufferedImage"%>
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
    <title>원본 이미지와 썸네일 이미지 보기</title>
</head>
<body>
<%
    String path = application.getRealPath("/") + "upload/";
    int size = 10 * 1024 * 1024;
    MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8");
    String fname = multi.getFilesystemName("picture");

    // 이미지 파일 읽어 메모리에 로드
    BufferedImage bi = ImageIO.read(new File(path + fname));

    // 이미지 파일 크기(width, height) / 5의 크기를 저장
    int width = bi.getWidth() / 5;
    int height = bi.getHeight() / 5;

    // 이미지 파일을 올려놓을 객체 생성
    BufferedImage thumb = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

    // 이미지 파일을 그려서 올려놓음
    Graphics2D g = thumb.createGraphics();
    g.drawImage(bi, 0, 0, width, height, null);

    // 이미지를 파일로 만들 파일 생성
    File f = new File(path + "sm_" + fname);

    // 이미지를 파일로 생성성 (thumb -> f)
    ImageIO.write(thumb, "jpg", f);
%>
<h3>원본이미지</h3>
<img src="<%=fname%>" alt=""> <br>
<h3>썸네일 이미지</h3>
<img src="sm_<%=fname%>" alt=""> <br>
</body>
</html>
