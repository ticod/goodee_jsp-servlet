<%@ page import="java.sql.*" %>

<%--
  Date: 2020-11-16
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JDBC</title>
    <link rel="stylesheet" href="../css/main.css">
</head>
<body>
<%
    Class.forName("org.mariadb.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/classdb", "scott", "1234");
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from emp");
    ResultSetMetaData rsmt = rs.getMetaData();
%>
<table>
    <tr>
        <%
            for (int i = 1; i <= rsmt.getColumnCount(); i++) {
        %>
        <th><%=rsmt.getColumnName(i) %></th>
        <% } %>
    </tr>
    <%
        while (rs.next()) {
    %>
    <tr>
        <%
            for (int i = 1; i <= rsmt.getColumnCount(); i++) {
        %>
        <td><%=rs.getString(i) %></td>
        <% } %>
    </tr>
    <% } %>
</table>
</body>
</html>
