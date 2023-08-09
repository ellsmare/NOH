<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) request.getAttribute("name");
%>

<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<%=name%>님 회원가입되었습니다.

<BUTTON onclick="location.href='main.do'">홈으로</BUTTON>
<BUTTON onclick="location.href='login.do'">로그인하기</BUTTON>
</body>
</html>