<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>전송된 파라미터 값 출력하기</title>
</head>
<body>
<%
    // request.setCharacterEncoding("UTF-8");
    String name   = request.getParameter("name");
    String age    = request.getParameter("age");
    String gender = request.getParameter("gender");
    String hobby  = request.getParameter("hobby");
    String year   = request.getParameter("year");
%>
이름: <%=name %> <br>
나이: <%=age %> <br>
성별: <%=(gender.equals("1")) ? "남자" : "여자" %> <br>
취미: <%=hobby %> <br>
출생년도: <%=year %> <br>
<h3>모든 취미 정보 조회</h3>
취미 :
<%
    String[] hobbies = request.getParameterValues("hobby");
    for (String h : hobbies) {
%>
<%=h %> &nbsp; &nbsp;
<% } %>
<h3>모든 파라미터 정보 조회하기</h3>
<table>
    <tr>
        <td>파라미터 이름</td>
        <td>파라미터 값</td>
    </tr>
    <%
        Enumeration e = request.getParameterNames();
        while (e.hasMoreElements()) {
            String pname = (String)e.nextElement();
            String[] values = request.getParameterValues(pname);
    %>
    <tr>
        <td><%=pname %></td>
        <td><% for (String v : values) { %>
            <%=v %> &nbsp; &nbsp;
        <% } %></td>
    </tr>
    <% } %>
</table>
</body>
</html>