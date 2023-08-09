<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--  -->
	<!-- id가 btn이고, 클릭하면 Func()함수를 수행하는   -->
	<button id="btn" onclick="Func()">버튼을 눌러주세요</button>
	<p id="text"></p>   <!-- onprogress -->
	<p id="text1"></p>	<!-- onload/text 파일 -->
	<p id="test"></p>	<!-- onload -->
	

	<!-- "Ajax는 프로그래밍 언어는 아니다 "
	Ajax :: 로딩없이 웹페이지 갱신하고, 백그라운드-> 웹서버로 데이터 전송에 사용	
	(웹서버와 데이터 교환에 사용)
	(Js 이벤트 동작을 도와주는 라이브러리)는 Ajax가 아니라 J쿼리
	라이브러리 :: 함수를 여러개 가지고 있다
	-->
	<!-- "바닐라(순수) Js 통해 구현" or Jquery 통해 구현 -->
	
	<script type="text/javascript">
	// XMLttpRequest 객체(xhr) :: 웹 서버와 "데이터 교환"에 사용 (Js에선 생성자로 존재)
	// 이 객체를 통해서, 페이지 중 일부만 업데이트 가능
	
// *콜백함수 종류
// onload :: xhr객체가 서버로부터 데이터를 성공적으로 받을 때 수행할 함수
// onerror :: xhr객체 통한 데이터 발신/수신 또는 xhr객체 자체에 문제 발생시 수행할 함수
// onprogress :: xhr객체에서 데이터 수신받을 때 호출할 함수
// 등등				
	function Func() {			
		// 1. XMLttpRequest 객체 생성 -> 내장된 생성자 이용
		// let 객체명 = new XMLttpRequest();
		let xhttp=new XMLHttpRequest();
			
			// 2. 콜백함수(데이터 수신/발신을 할시 수행하는 함수) 정의
			// xhttp객체명.콜백함수명 = function(){
			// 		(콜백함수를 실행시키는 조건이 만족시) 수행할 명령문;}
			// 콜백함수 여러개 정의 가능
		xhttp.onload=function(){ // 데이터 성공적으로 수신 받았을 때,
			document.getElementById("text").innerHTML="성공적했다!! 오타;;;";			
			}
			
		//xhttp.onload=function(){  
		//	document.getElementById("text1").innerHTML=this.responseText;}	
			
		xhttp.onprogress=function(){  
			document.getElementById("test").innerHTML="통신";
			}		
			
			// 3. 서버에 요청 보내기(보고 하는것도 포함) 
		 	//     :: open(), send() 순서 중요
		 	// open() :: 서버에 요청할 내용 기술
		 		// xhr객체명.open("GET", "서버에 요청할 데이터");
				// GET :: 서버로부터 데이터를 받아올 때 사용 (=데이터 요청)
				// POST :: 서버로 데이터 보낼 때 사용
		 	// send() :: 서버에 요청을 보냄
		 		// xhr객체명.send(); :: post 형식일 때, string형 매개변수 필요
		 			//ex) xhr객체명.send(string);
		xhttp.open("GET", "today_0503.txt"); 
			// "today_0503.txt" 파일을 받아올 것을 요청
		xhttp.send();
			// GET 형식 사용, :: open()의 두변째 매개변수 필요
			// POST 형식 사용, :: send()의 첫번째 매개변수 필요
	}
		
	</script>		
</body>
</html>