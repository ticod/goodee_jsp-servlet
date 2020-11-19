<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="java.io.File" %>
<%@ page import="java.awt.*" %><%--
  Date: 2020-11-19
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    String path = application.getRealPath("/") + "picture/";
    int size = 10 * 1024 * 1024;
    File pathDirectory = new File(path);
    if (!pathDirectory.exists()) {
        pathDirectory.mkdirs();
    }
    MultipartRequest multi = new MultipartRequest(request, path, size, "utf-8");
    String fname = multi.getFilesystemName("picture");
    BufferedImage bi = ImageIO.read(new File(path + fname));
    int width = bi.getWidth() / 3;
    int height = bi.getHeight() / 3;
    BufferedImage thumbnail = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
    Graphics2D g = thumbnail.createGraphics();
    g.drawImage(bi, 0, 0, width, height, null);
    File f = new File(path + "sm_" + fname);
    ImageIO.write(thumbnail, "jpg", f);
%>
<script>
    const pic = window.opener.document.getElementById('pic');
    pic.src = "/picture/sm_<%=fname%>";
    window.opener.document.f.picture.value = "<%=fname%>";
    window.close();
</script>