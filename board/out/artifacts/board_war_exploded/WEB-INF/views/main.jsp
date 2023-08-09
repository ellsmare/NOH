<%@ page import="com.dto.MemberDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    MemberDTO dto = (MemberDTO) session.getAttribute("mi");
%>
<!doctype html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.7.0.js"
            integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script>
        <%--버튼 누르면 함수동작--%>
        // function searchSubmit() {
        //    // 검색 아이디 값이 ~인 값을 변수 input에 저장
        //    var input = $('#keywordInput').val();
        //    if(input == ''){
        //        alert('키워드를 입력해주세요');
        //        return;
        //    }
        //
        // //   빈값이 아니면 서브밋
        //     $('#searchForm').submit();
        // }
    </script>
</head>
<body>
<%if (dto == null){%>
<a href="/member/join/form.do"> 회원가입 </a>
<a href="/login.do"> 로그인 </a>
<%} else {%>
<%=dto.getName()%>님 안녕하세요
<a href="/member/info.do"> 마이페이지 </a>
<a href="/logout.do"> 로그아웃 </a>
<%}%>

<%--비밀번호 변경, , 홈으로가기--%>




<%-- 컨트롤러 -> main --%>
<%--이동--%>
<%--로그인을 하면 톰캣이 고유한 아이디를 발급
    30분마다 갱신 session 세션::새로고침 등 작업시 계속 연장됨
--%>
<%--세션 :: 한 컴퓨터에서 하는 같은 브라우저별, 키와 벨류 --%>


<%--&lt;%&ndash;홈&ndash;%&gt;--%>
<%--&lt;%&ndash;input, ~~ 데이터 입력하면 요청하는 경로 :: 로그인 result  &ndash;%&gt;--%>
<%--&lt;%&ndash;화요일에 get으로 바꿔서도 해보기 빈칸?&ndash;%&gt;--%>
<%--<form action="/result.do" method="post">--%>
    <%--이름--%>
    <%--&lt;%&ndash;키값을 받아오는 용도의 속성 :: name &ndash;%&gt;--%>
    <%--<input type="text" name="myName">--%>
    <%--<br>--%>
    <%--나이--%>
    <%--<input type="text" name="myAge">--%>
    <%--<br>--%>
    <%--<input type="submit" value="확인">--%>

    <%--&lt;%&ndash;~~살 ~~님 안녕하세요&ndash;%&gt;--%>
<%--</form>--%>

<%--<form action="/search.do" method="post" id="searchForm"><br>--%>
    <%--검색--%>
    <%--&lt;%&ndash;키값을 받아오는 용도의 속성 :: name &ndash;%&gt;--%>
    <%--<input type="text" name="myNameId" id="keywordInput">--%>
    <%--<button type="button" onclick="searchSubmit()">확인</button>--%>
<%--</form>--%>

<%--&lt;%&ndash;버튼을 form 밖으로--%>
<%--:: 안에 있으면 서브밋으로 동작함 type=button 지정해야함 &ndash;%&gt;--%>


</body>
</html>

<%--submit :: 이동, 커서있을때 enter키 작동--%>
<%--중복으로 되어 있을때 검색하면 오류남, 아이디로 검색 == --%>
<%--노은실 id = 10--%>


<%--~~살 ~~님 안녕하세요--%>
<%--확인을 누르면 search.do이동 하는 동작을 원한다--%>
<%--컨트롤러에서 처리 : 분기문 만들기--%>