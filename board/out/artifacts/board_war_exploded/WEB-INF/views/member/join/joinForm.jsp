<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://code.jquery.com/jquery-3.7.0.js"
            integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <title>Document</title>
    <SCRIPT>


        //아이디 중복 검사 여부
        //함수명과 변수명이 중복되어서 오류
        var checkDuplication = false;

        function checkId() {
            // todo 아이디 중복검사 기능 적용
            // 위치만 기억하다가 클릭하면 함수 동작

            //아이디 빈값여부
            //아이디 조건
            var input = $('#loginId').val();
            if (input == '') {
                alert("아이디를 입력해 주세요.")
                //커서 위치 자동으로 옮겨줌
                $('#loginId').focus();
                return;
            }

            // 객체생성
            // 정규표현식 :: ^시작[조건]$끝 :: 띄어쓰기 하면 안됨
            var regexp = new RegExp('^[a-z0-9]{4,15}$');
            if (regexp.exec(input) == null) {
                alert("아이디는 4~15자 영문소문자, 숫자로 입력해 주세요.")
                $('#loginId').focus();
                return;
            }

            // 비동기 통신을 통해 아이디 존재 여부 확인 = ajax 통신     오타조심 ㅠㅠ
            // 비동기 통신은 단방향, 무전기, 동기 통신 방식-양방향, 게임
            // http :: request가 없으면 response 동작하지 않는다 -> 무전기랑 다른점

            // {} 키와 벨류로 이루어진 객체
            // ajax와 서버 통신은 도메인 주소도 포함됨
            //나중에 에러 발생하면 파라메터 넣어서, 서비스하면 넣지말기, 콘솔 창에서 보임

            // 존재한다면 다시 입력, 다시 검색
            // 없다면 checkId = true

            $.ajax({
                url: "/member/check/id.do"
                , type: "post"
                , dataType: "json"
                , data: {
                    loginId: input
                }
                , error: function () {
                    alert('서버와 통신하는데 실패했습니다.');
                }
                , success: function (data) {
                    if (data.usable == 'true') {
                        alert('사용할 수 있는 아이디 있니다.');
                        checkDuplication = true;
                    } else {
                        alert('이미 사용 중인 아이디 입니다.');
                        $('#loginId').focus();
                    }
                }
            });

        }



        // 나중에 새로 입력한다면 checkId = false
        function initCheck() {
            checkDuplication = false;
        }

        function joinMember() { // 가입버튼 클릭
            var loginId = $('#loginId');
            var password = $('#password');
            var passwordCheck = $('#passwordCheck');
            var name = $('#name');
            var birthday = $('#birthday');
            var mobileNo = $('#mobileNo');
            var email = $('#email');
            var zipcode = $('#zipcode');
            var address = $('#address');
            var detailAddress = $('#detailAddress');


            // 아이디  입력 여부 확인 loginId
            if (loginId.val == '') {
                alert("아이디는 필수 입력 값입니다.");
                loginId.focus();
                return;
            }
            // 비밀번호 입력 여부 확인 password
            if (password.val == '') {
                alert("비밀번호는 필수 입력 값입니다.");
                password.focus();
                return;
            }
            // 비밀번호확인 입력 여부 확인 --선택사항 passwordCheck
            if (passwordCheck.val == '') {
                alert("비밀번호 확인이 필요합니다.");
                passwordCheck.focus();
                return;
            }
            // 이름 입력 여부 확인 name.
            if (name.val == '') {
                alert("비밀번호는 필수 입력 값입니다.");
                name.focus();
                return;
            }
            // 휴대전화 입력 여부 확인 mobileNo
            if (mobileNo.val == '') {
                alert("비밀번호는 필수 입력 값입니다.");
                mobileNo.focus();
                return;
            }
            // 이메일 입력 여부 확인 email
            if (email.val == '') {
                alert("비밀번호는 필수 입력 값입니다.");
                email.focus();
                return;
            }

            // 변수 생성
            var addressFlag = false;
            // 주소형제 하나라도 입력 :: 입력 여부 확인            -------- 플레그 깃발
            if (zipcode.val() != '' || address.val() != '' || detailAddress.val() != '') {
                addressFlag = true;
            }

            if(addressFlag &&
                (zipcode.val() == ''
                || address.val() == ''
                || detailAddress.val() == '')){
                alert("주소를 모두 입력해 주세요.");
                detailAddress.focus();
            }

            // 정규표현식 :: ^시작[조건]$끝 :: 띄어쓰기 하면 안됨

            // 아이디 정규표현식 통과 확인
            regexp = new RegExp('^[a-z0-9]{4,15}$');
            if (regexp.exec(loginId.val()) == null) {
                alert("아이디는 4~15자 영문소문자, 숫자로 입력해 주세요.")
                loginId.focus();
                return;
            }

            // 비밀번호 정규표현식 통과 확인
            regexp = new RegExp('^[a-zA-Z0-9!@#$]{4,15}$');
            if (regexp.exec(password.val()) == null) {
                alert("비밀번호는 4~15자 영문소문자, 숫자, 특수기호(!@#$)로 입력해 주세요")
                password.focus();
                return;
            }

            // 이름 정규표현식 통과 확인
            regexp = new RegExp('^[가-핳!@#$]{2,10}$');
            if (regexp.exec(name.val()) == null) {
                alert("2~10자 한글로 입력해 주세요.")
                name.focus();
                return;
            }

            // 생년월일이 입력되어 있다면, 정규표현식 통과 여부 확인 19xx, 20xx, 월1~12,일1~31
            regexp = new RegExp('^[0-9!@#$]{8,8}$');
            if (birthday.val() != '' && regexp.exec(birthday.val()) == null) {
                alert("8자리 숫자로 입력해 주세요.")
                birthday.focus();
                return;
            }

            // 휴대폰
            regexp = new RegExp('^[0-9]{10,12}$');
            if (regexp.exec(mobileNo.val()) == null) {
                alert("휴대전화번호는 10~12자 숫자로 입력해 주세요");
                mobileNo.focus();
                return;
            }

            // 이메일 정규표현식 통과 여부 확인
            regexp = new RegExp('^.{1,50}$');
            if (regexp.exec(email.val()) == null) {
                alert("email 입력해 주세요");
                email.focus();
                return;
            }

            // 주소형제 하나라도 입력:: 우편번호 정규표현식 통과 확인
            // 주소형제 :: 주소 정규표현식 통과 확인
            // 주소형제 :: 상세주소 입력 여부 확인
            if(addressFlag){
                regexp = new RegExp('^[0-9]{5,5}$');
                if (regexp.exec(zipcode.val()) == null) {
                    alert("주소검색 버튼으로 검색해 주세요");
                    zipcode.focus();
                    return;
                }
                regexp = new RegExp('^.{1,100}$');
                if (regexp.exec(address.val()) == null) {
                    alert("주소검색 버튼으로 검색해 주세요");
                    address.focus();
                    return;
                }
                regexp = new RegExp('^.{1,100}$');
                if (regexp.exec(detailAddress.val()) == null) {
                    alert("상세 주소는 100자 이내로 입력해주세요");
                    detailAddress.focus();
                    return;
                }
            }

            // 아이디 중복체크 확인
            if(!checkDuplication){
                alert('아이디 중복 체크를 진행해 주세요');
                return;
            }

            // 비밀번호 == 비벌번호 확인 여부 확인
            if(password.val() != passwordCheck.val()){
                alert('비밀번호와 비밀번호확인이 동일하게 입력해 주세요')
            }

            // 전송
            $('#joinForm').submit();
        }
    </SCRIPT>
</head>
<style>
    ::placeholder {
        /*폰트사이즈는 홀수단위 !! */
        font-size: 9px;
    }

</style>

<body>
<h3> 회원가입 </h3>

<%--회원가입 /member/join --%>
<%--form은 기본값이 get방식 --> post 바꿔주기--%>
<form action="/member/join.do" method="post" id="joinForm">

    <%--input태그에서는 oninput을 많이 사용한다--%>
    <div>
        아이디
        <input type="text" name="loginId" maxlength="15" id="loginId"
               placeholder="4~15자 영문소문자, 숫자로 입력해 주세요."
               oninput="initCheck()">
        <button type="button" name="id_check" onclick="checkId()">중복확인</button>

    </div>
    <div>
        비밀번호
        <input type="password" name="password" maxlength="15" id="password"
               placeholder="4~15자 영문소문자, 숫자, 특수기호(!@#$)로 입력해 주세요.">
    </div>
    <br>
    <div>
        비밀번호 확인
        <input type="password" name="passwordCheck" maxlength="15" id="passwordCheck"
               placeholder="비밀번호와 동일하게 입력해 주세요.">
    </div>
    <div>
        이름
        <input type="text" name="name" maxlength="10" id="name"
               placeholder="1~10자 한글로 입력해 주세요.">
    </div>
    <div>
        생년월일
        <input type="text" name="birthday" maxlength="8" id="birthday"
               placeholder="입력예) 19991231">
    </div>
    <div>
        휴대전화번호
        <%--type이 number이면 숫자패드가 생김--%>
        <input type="text" name="mobileNo" maxlength="15" id="mobileNo"
               placeholder="-를 제외한 숫자로 입력해 주세요 ">
    </div>
    <div>
        이메일
        <input type="email" name="email" maxlength="50" id="email"
               placeholder="email을 입력해주세요">
    </div>
    <%--주소는 까다롭다 --%>
    <div>
        주소
        <button type="button" onclick="DaumPostcode()">검색</button>
        <input type="text" name="zipcode" maxlength="5" readonly id="zipcode">
        <input type="text" name="address" maxlength="100" readonly id="address">
        <input type="text" name="addressDetail" maxlength="100" readonly id="detailAddress">
    </div>

</form>
<%--form에서는 서브밋으로 동작하므로 enter 사용가능 -> 가입버튼은 마우스 클릭--%>
<button onclick="joinMember()" >가입</button>
<button onclick="location.href='/main.do'">취소</button>

</body>
</html>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/js/daumPost.js"></script>

<%--로그인시 비밀번호 단방향 암호화:: 법적으로 필수--%>