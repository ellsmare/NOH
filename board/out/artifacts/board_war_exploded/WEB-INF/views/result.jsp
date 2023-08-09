
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //왼쪽은 스트링 오른쪽은 객체 :: 캐스팅
    String inputName = (String) request.getAttribute("name");

    //캐스팅
    String inputAge = (String) request.getAttribute("year");

%>


<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

<%=inputAge%>살 <%=inputName%>님 반갑습니다.

<%--버튼은 프론트에서 필요함--%>
<%-- 도메인 톰캣의 루트-> 8080의 홈  --%>
<button onclick="location.href='/main.do'">홈으로</button>

</body>
</html>