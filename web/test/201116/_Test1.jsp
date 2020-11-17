<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Date: 2020-11-16
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST</title>
    <link rel="stylesheet" href="../../css/main.css">
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String sql = request.getParameter("sql");
%>
<form action="Test1.jsp" method="post">
    <textarea name="sql" rows="5"><%=sql == null ? "" : sql %></textarea>
    <input type="submit" value="실행">
</form>
<%
    if (sql != null) {
        Class.forName("org.mariadb.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/classdb", "scott", "1234");
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            ResultSetMetaData rsmd = rs.getMetaData();

            Statement stmt2 = conn.createStatement();
            ResultSet rs2 = stmt2.executeQuery("select count(*) from (" + sql + ") a");
            int recordCount = rs2.getInt(1);
            int columnCount = rsmd.getColumnCount();
%>
<table>
    <tr>
        <td colspan="<%=columnCount%>" style="text-align: right">조회된 레코드 수: <%=recordCount%></td>
    </tr>
    <tr>
        <% for (int i = 1; i <= columnCount; i++) { %>
        <th><%=rsmd.getColumnName(i) %></th>
        <% } %>
    </tr>
    <% while (rs.next()) { %>
    <tr>
        <% for (int i = 1; i <= rsmd.getColumnCount(); i++) { %>
        <td><%=rs.getString(i) %></td>
        <% } %>
    </tr>
    <% } %>
</table>
<% } catch (Exception e) { %>
<h1>sql 구문 오류입니다.</h1>
<h1><%=e.getMessage()%></h1>
<h1>sql구문: <%=sql%></h1>
<% } finally { conn.close(); } }%>
</body>
</html>
