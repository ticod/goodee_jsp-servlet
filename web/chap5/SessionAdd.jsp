<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 1:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>장바구니 추가</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String product = request.getParameter("product");
    List<String> cart = (List<String>)session.getAttribute("cart");
    if (cart == null) {
        cart = new ArrayList<>();
        session.setAttribute("cart", cart);
    }
    cart.add(product);
%>
<script>
    alert("<%=product %>이(가) 장바구니에 추가되었습니다.");
    history.go(-1);
</script>
</body>
</html>
