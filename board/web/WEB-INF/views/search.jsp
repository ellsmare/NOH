
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //왼쪽은 스트링 오른쪽은 객체 :: 캐스팅
    String name = (String) request.getAttribute("result");
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

<%=name%>



</body>
</html>