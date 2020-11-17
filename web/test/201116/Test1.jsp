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
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        ResultSetMetaData rsmd = rs.getMetaData();
        int columnCount = rsmd.getColumnCount();
        List<List<String>> records = new ArrayList<>();
        while (rs.next()) {
            List<String> record = new ArrayList<>();
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                record.add(rs.getString(i));
            }
            records.add(record);
        }
%>
<table>
    <tr>
        <td colspan="<%=columnCount%>" style="text-align: right">조회된 레코드 수: <%=records.size()%></td>
    </tr>
    <tr>
        <% for (int i = 1; i <= columnCount; i++) { %>
        <th><%=rsmd.getColumnName(i) %></th>
        <% } %>
    </tr>
    <% for (List<String> record : records) { %>
    <tr>
        <% for (String data : record) { %>
        <td><%=data %></td>
        <% } %>
    </tr>
    <% } %>
</table>
<% } %>
</body>
</html>
