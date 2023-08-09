<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	button {
	margin-bottom: 10px;
	}
</style>
  	
<body>
<!--
 아래는 저의 인적사항입니다.
 [버튼 위치]
 
 << 지금까지 수업했던 내용을 불러옵니다. >>
 
 *java
 [버튼 위치]
 *html/css
 [버튼 위치]
 *JavaScript
 [버튼 위치]
 *Ajax
 [버튼 위치]
 
 아래조건 만족, 결과가 나오게끔 코드 작성
 * 5개의 txt 파일 구성
 introduce.txt -> 자기소개 내용
 Java.txt -> java 수업내용
 html.txt -> html 수업내용
 Js.txt    -> Js 수업내용
 Ajax.txt  -> Ajax 수업내용
 
 각 버튼을 누르면 txt 내용을 불러오게끔
 (ongrogress 콜백 함수도 추가로 구성 :: alert()함수 사용)
 
  -->
  <!-- https://ghost4551.tistory.com/139 -->
  	<h2> 아래는 저의 인적사항입니다. </h2>
  	
  	<!-- id가 intro, 요소 클릭을 하면 Intro함수를 수행하는 버튼 생성  -->
  	<button id="intro" onclick="Intro()"> 자기소개 파일 </button>
  	<div id="div1"></div><hr><br>
  	
  	<h4>지금까지 수업했던 내용을 불러옵니다.</h4>
  	
  	<p> * Java </p>
  	<button id="ja" onclick="Intro2()"> Java 파일 </button>
  	<div id="div2"></div>
  	
  	<p> * html/css </p>
  	<!--id가 ht, 요소 클릭을 하면 Intro3()함수를 수행하는 버튼 생성-->
  	<button id="ht" onclick="Intro3()"> html/css 파일 </button>
  	<div id="div3"></div>
  	
  	<p> * JavaScript  </p>
  	<button id="jas" onclick="Intro4()"> JavaScript 파일 </button>
  	<div id="div4"></div>
  	
  	<p> * Ajax  </p>
  	<button id="aj" onclick="Intro5()"> Ajax 파일 </button>
  	<div id="div5"></div>
  
  
	<script type="text/javascript">
	function Intro() {
		// 1. 객체 생성 -> 3. 서버에 요청을 보내고 -> 2. 콜백 함수 실행
		//1.객체생성
		let xhttp=new XMLHttpRequest(); // 생성자 사용
		
		//2.콜백 함수 정의(서버로부터 introduce.txt 파일 받아올 것)
		xhttp.onload=function(){ // 수신, 발신 성공적으로 완료되면, 다음 함수를 실행하라.
			document.getElementById("div1").innerHTML=this.responseText;	
			// this.responseText :: 수신받은 데이터
		}
		
		// 콜백함수 중복 적용 가능
		// 서버로부터 데이터 수신받기 직전에 수행한다
		xhttp.onprogress=function(){
			alert("인적사항");
		}
		
		//3. 서버에 요청 보내기 :: open(), send()
		xhttp.open("GET", "introduce.txt");		
		xhttp.send();		
	}
	
	function Intro2() {
		
		let xhttp=new XMLHttpRequest();
		
		xhttp.onload=function(){			
			document.getElementById("div2").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}		
		
		xhttp.open("GET", "Java.txt");
		xhttp.send();	
			
	}
	
	function Intro3() {
		// XMLHttpRequest 생성자 이용하여 xhttp 객체생성
		let xhttp=new XMLHttpRequest();
		// 서버에 요청 보내기 :: open(), send()
		// 객체명.open(첫번째 매개변수, 두번째 매개변수) :: GET/POST
			// 첫번째 매개변수에는 GET(데이터 받아올 때) 또는 POST(데이터 보낼 때)			// 
		// 객체명.send() :: POST인 경우, send에 string형 매개변수 필요 
		xhttp.open("GET", "html.txt");
		xhttp.send();	
		//
		xhttp.onload=function(){			
			document.getElementById("div3").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}
			
			
	}
	
	function Intro4() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("div4").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}
			
		xhttp.open("GET", "Js.txt");
		xhttp.send();		
	}
	
	function Intro5() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("div5").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}
			
		xhttp.open("GET", "Ajax.txt");
		xhttp.send();		
	}
	
	</script>
	
	
	
</body>
</html>