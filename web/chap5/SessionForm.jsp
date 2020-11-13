<%--
  Created by IntelliJ IDEA.
  User: lours
  Date: 2020-11-13
  Time: 오후 1:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>SESSION을 이용한 장바구니 예제</title>
</head>
<body>
<h3>상품 선택</h3>
<form action="SessionAdd.jsp" method="post">
    <select name="product" id="">
        <option value="사과">사과</option>
        <option value="배">배</option>
        <option value="감">감</option>
        <option value="자몽">자몽</option>
        <option value="귤">귤</option>
        <option value="딸기">딸기</option>
    </select>
    <input type="submit" value="장바구니 추가">
</form>
<a href="SessionView.jsp">
    장바구니 보기
</a>
</body>
</html>
