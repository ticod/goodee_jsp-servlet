<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%--
  page 지시어 예제
    : 속성을 이용하여 현재 페이지의 특징을 설정
    language : 사용 언어
    contentType : 반드시 기술해야 함. 문서의 형식을 MIME 타입으로 설정
    pageEncoding : 문자의 인코딩 방식을 설정
    import : 사용되는 클래스의 패키지 이름을 생략할 수 있도록 설정
             여러 번 사용 가능
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>osadfoasdoiashsahfodsffhoiah</title>
</head>
<body>
<%
    Date today = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
현재 일시: <%=sf.format(today)%>
</body>
</html>
