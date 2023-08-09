<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-3.7.0.js"
            integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

    <title>Document</title>
    <script>
        function login() {
            var loginId = $('#loginId');
            var password = $('#password');
        // 아이디 입력 검사
        if(loginId.val()==''){
            alert('아이디를 입력해주세요');
            loginId.focus();
            return false;
        }

            // 비빌번호 입력 검사
            if(password.val()==''){
                alert('패스워드를 입력해주세요');
                password.focus();
                return false;
            }
        return true;
        }
    </script>

</head>
<body>

<form action="/loginProcess.do" method="post" onsubmit="return login();">
    <div>
        아이디
        <input type="text" name="loginId" id="loginId"> <br>
        비빌번호
        <input type="password" name="password" id="password">
    </div>
    <input type="submit" value="로그인">
</form>
    <div>
        <a href="/member/join/form.do">회원가입</a>
        <a href="/member/id/find.do">아이디찾기</a>
        <a href="/member/password/find.do">비밀번호찾기</a>
    </div>

</body>
</html>