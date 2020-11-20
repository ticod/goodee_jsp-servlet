<%--
  1. 주석
    jsp 주석: <%-- --\%>
    java 주석: <% // %>
    html 주석: <!-- --> : 브라우저 실행시 주석

  2. 지시어 (Directive)
    - page 지시어: 속성을 이용하여 현재 페이지의 특징 설정
    - include 지시어: 두 개의 jsp페이지를 서블릿에서 한 개의 서블릿으로 생성
    - taglib 지시어:  커스텀 태그 생성시 사용되는 지시어. JSTL 수업에서 사용

  3. 스크립트 (Script) : 자바의 영역
    - 스크립트릿 : <%  %> : _jspService 메서드에 자바 소스로 생성됨
    - 표현식    : <%= %> : 값을 출력
                          한줄 주석 사용 금지, 세미콜론 사용 X
    - 선언문    : <%! %> : 멤버로 생성되는 영역
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="utf-8" %>
<html>
  <head>
    <title>JSP에서 Servlet</title>
  </head>
  <body>
  <a href="/ServletTest" methods="get">Servlet으로 넘어갑니다.</a>
  <a href="/model1/member/main.jsp">model1 게시판</a>
  </body>
</html>
