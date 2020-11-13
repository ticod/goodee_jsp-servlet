<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>APPLICATION 객체</title>
</head>
<body>
<h3>
    application 객체는 웹 어플리케이션당 하나의 객체가 제공됩니다. <br>
    현재 웹 어플리케이션 jspchap5 프로젝트의 모든 jsp는 하나의 application 객체를 공유합니다. <br>
</h3>
<table border="1" style="border-collapse: collapse">
    <tr>
        <td>
            jsp 버전
        </td>
        <td>
            <%=application.getMajorVersion() %>.
            <%=application.getMinorVersion() %>
        </td>
    </tr>
    <tr>
        <td>웹 컨테이너 정보 (WAS 서버 정보)</td>
        <td><%=application.getServerInfo() %></td>
    </tr>
    <tr>
        <td>웹 어플리케이션 경로</td>
        <td><%=application.getRealPath("/") %></td>
    </tr>
</table>
<% application.setAttribute("test", "ApplicationEx1.jsp 페이지에서 등록한 속성"); %>
<% session.setAttribute("test", "ApplicationEx1.jsp 페이지에서 등록한 속성"); %>
</body>
</html>
