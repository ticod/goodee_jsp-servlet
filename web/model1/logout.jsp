<%--
  Date: 2020-11-17
--%>
<%@ page contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    session.invalidate();
    response.sendRedirect("loginform.jsp");
%>