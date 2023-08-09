<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
  
  	<p> 아래는 저의 인적사항입니다. </p>
  	<button id="intro" onclick="intro()"> 자기소개 파일 </button>
  	
  	<p> 지금까지 수업했던 내용을 불러옵니다. </p>
  	
  	<p> * Java </p>
  	<button id="ja" onclick="intro2()"> 자기소개 파일 </button>
  	
  	<p> * html/css </p>
  	<button id="ht" onclick="intro3()"> 자기소개 파일 </button>
  	
  	<p> * JavaScript  </p>
  	<button id="jas" onclick="intro4()"> 자기소개 파일 </button>
  	
  	<p> * Ajax  </p>
  	<button id="aj" onclick="intro5()"> 자기소개 파일 </button>
  
  
	<script type="text/javascript">
	function intro() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){
			document.getElementById("intro").innerHTML=this.responseText;			
		}
		
		xhttp.onprogress=function(){
			alert("인적사항");
		}
		
		xhttp.open("GET", "introduce.txt");		
		xhttp.send();		
	}
	
	function intro2() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("ja").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}
			
		xhttp.open("GET", "Java.txt");
		xhttp.send();		
	}
	
	function intro3() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("ht").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}
			
		xhttp.open("GET", "html.txt");
		xhttp.send();		
	}
	
	function intro4() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("jas").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<지금까지 수업했던 내용을 불러옵니다.>>");
		}
			
		xhttp.open("GET", "Js.txt");
		xhttp.send();		
	}
	
	function intro5() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("aj").innerHTML=this.responseText;					
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