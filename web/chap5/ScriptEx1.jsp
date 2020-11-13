<%--

--%>
<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>스크립트 예제</title>
</head>
<body>
<%
    // 스크립트릿 (Scriptlet)
    // 메서드 선언 불가 -> 서블릿에서 메서드로 쓰여짐
    System.out.println("스크립트 예제");
    String msg = "스크립트 예제";
    for (int i = 1; i <= 10; i++) {
%>
<%--
    표현식 : 화면 (브라우저) 에 값을 출력
    조건
      1. 값이 존재해야 함 : 변수, 수식, 리턴 값이 있는 메서드 (없으면 불가능)
      2. 세미콜론 (;) 으로 종료 X
      3. 한줄 주석 (//) X, 주석은 /* */로 처리해야 함
         => out.print()로 서블릿에서 들어가기 때문에 그렇다.
      4.

--%>
<%=i + ":" + msg /* 표현식 */%> <br>
<% } %>
<%! // 선언문
    String msg = "선언문으로 선언한 msg 변수";
    String getMsg() {
        return msg;
    }
%>
</body>
</html>
