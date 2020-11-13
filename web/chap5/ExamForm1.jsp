<%--
  Request 관련 예제
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exam Form 1</title>
</head>
<body>
<form action="Exam1.jsp" method="post">
    <input type="hidden" name="kbn">
    <input type="text" name="num">까지의 합 구하기
    <input type="button" value="전체 합계" onclick="inputCheck(this.form, 0)">
    <input type="button" value="홀수 합계" onclick="inputCheck(this.form, 1)">
    <input type="button" value="짝수 합계" onclick="inputCheck(this.form, 2)">
</form>
<script>
    const inputCheck = (f, val) => {
        if (f.num.value == "") {
            document.body.innerHTML += `<h2 style="color: chartreuse;">숫자를 입력해주세요</h2>`;
            f.num.focus();
            return;
        }
        if (isNaN(f.num.value)) {
            document.body.innerHTML += `<h2 style="color: chartreuse;">숫자만 입력해주세요</h2>`;
            f.num.focus();
            return;
        }
        f.kbn.value = val;
        f.submit();
    };
</script>
</body>
</html>
