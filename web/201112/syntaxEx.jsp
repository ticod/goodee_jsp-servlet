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
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>JSP에서 사용되는 주석</title>
    <% String msg = "jsp 주석 예제입니다."; %>
</head>
<body>
<h1>jsp 페이지에서 사용되는 주석</h1>
<ol>
    <li>
        jsp 주석: &lt;%-- jsp 주석 표현 --%&gt;
    </li>
    <%--
        jsp 주석 - jsp 페이지에서만 보여집니다.
        서블릿 변환시 제외되는 부분입니다. 변환된 서블릿에서는 볼 수 없습니다.
    --%>
    <li>
        java 주석: &lt;% // jsp 주석 표현 %&gt;
    </li>
    <%
        // 자바 한줄 주석
      /*
      자바 여러 줄 주석, 자바 주석은 서블릿이 컴파일될 때 주석이므로 서블릿 페이지에서 볼 수 있습니다.
       */
    %>
    <li>
        html 주석: &lt;!-- html 주석 표현 --&gt;
    </li>
    <!--
        html 주석
        <%=msg%>
    -->
</ol>
</body>
</html>
