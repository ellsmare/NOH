<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
	// Jquery문의 script 태그는 보통 head 안에서 작성함
	// Jquery :: Js 언어 사용을 간편하게 하는 데에 도움을 주는 Js 라이브러리
	// Jquery는 프로그래밍 언어가 아니다
	
	// Jquery 기본 문법 :: $("선택자").동작함수(){~~ 마지막 줄은 function 없음}
	
	// document.onload == $(document).ready == $
	// :: 문서(홈페이지)를 불러온다, 홈페이지를 이렇게 "구성한다"
	// :: (document).ready 생략가능
	
	// ''실행해서 홈페이지를 불러올 때, 아래 함수를 수행하라.
	$(document).ready(function(){
		// ''버튼 태그를 클릭하면 아래 함수를 수행하라.""
		// (이때, html에 있는 모든 button 태그에 적용한다)
  		$("button").click(function(){
  			// "html에 있는 모든 p태그 요소를 숨겨라."
   			 $("p").hide();
  		});
	});
	// -> $"버튼태그를 클릭하면", $"모든 p태그 요소를 숨겨라."
	
	// $"실행"하면, +$"id가 h인 태그에 해당 문자열 삽입하기 
	// Js 코드도 함께(혼용) 작성 o
	$(function(){
		document.getElementById("h").innerHTML="성공!!";
	});
	
	$(function(){
		// id를 뜻함 #
		$("#j").html("j쿼리 형식 성공");
	});
	
	// Css 처리 -> 태그 style에 대한 적용 (이벤트도 가능)
	// id 선택자 #, class 선택자 .(온점)
	
	// $"실행"하면, +$"id가 c인 태그의 글씨 "색상"을 "yellow"로 변경하라 
	// j쿼리 css 검색이용 :: css("속성명", "속성값");
	$(function(){
		$("#c").css("color", "yellow");
		
	});
	
	// 여러개 설정해보기
	$(function(){ 					  // $"실행을 하면"
		// $"id가 c인 태그의 글씨 "색상"을 "yellow"로 변경
		$("#h").css("color", "blue"); 
		
		//$"p태그를 클릭하면"
		$("p").click(function(){  	  
			$("p").css("fontSize", "25px");	 
			$("p").css("color", "red");
		})
	});
	
	
	

	</script>

</head>
<body>
	<h1 id="h"></h1>
	<h1 id="c">이 문자의 색깔이 변경됩니다.</h1>
	<h2 id="j">This is a heading</h2>

	<p>This is a paragraph.</p>
	<p>This is another paragraph.</p>

	<button>Click me</button>
</body>
</html>