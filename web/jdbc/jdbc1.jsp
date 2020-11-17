<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

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
    while (rs.next()) {
%>
<%=rs.getString(1)%>, <%=rs.getString(2)%>, <%=rs.getString(3)%>, <%=rs.getString(4)%> <br>
<%
    }
%>
</body>
</html>
