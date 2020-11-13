<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST FORM 1</title>
    <style>
        body {
            margin : 0;
            padding: 0;
        }
        input {
            margin-bottom: 8px;
        }
        input[type=button] {
            width: 40px;
            height: 40px;
        }
    </style>
</head>
<body>
<form action="Test1.jsp" method="post">
    <input type="hidden" name="op">
    숫자 1: <input type="text" name="num1"> <br>
    숫자 2: <input type="text" name="num2"> <br>
    <input type="button" value="+" onclick="inputCheck(this.form, this.value)">
    <input type="button" value="-" onclick="inputCheck(this.form, this.value)">
    <input type="button" value="*" onclick="inputCheck(this.form, this.value)">
    <input type="button" value="/" onclick="inputCheck(this.form, this.value)">
</form>
<script>
    const inputCheck = (f, n) => {
        if (f.num1.value == "" || f.num2.value == "") {
            alert("숫자를 입력해주세요");
            return;
        }
        if (isNaN(f.num1.value) || isNaN(f.num2.value)) {
            alert("숫자만 입력해주세요");
            return;
        }
        f.op.value = n;
        f.submit();
    };
</script>
</body>
</html>
