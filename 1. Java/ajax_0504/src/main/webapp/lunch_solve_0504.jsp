<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
// 점심메뉴 후보 5가지 나열
// - html에 들어갈 내용 :: 내용을 넣을 5가지 태그 + 버튼 4개
// (html 상으로는 태그만 넣어두고, 태그 내용을 jquery의 html()함수 통해 넣기)

// 버튼 이벤트는 아래처럼
// "1순위 메뉴 보기" 버튼 :: 글씨 빨간, 글씨크기 가장크게
// "2순위 메뉴 보기" 버튼 :: 파란 , 글씨크기 1순위보다 조금 작게
// "3순위 메뉴 보기" 버튼 :: 초록 , 글씨크기 2순위보다 조금 작게
// "후보자 지우기" 버튼 :: 1,2,3 순위 제외한 메뉴 태그 모두 숨기기

	$(document).ready(function(){ //$"실행을 하면"
				
		$("#p1").html("- 편의점 음식");
		$("#p2").html("- 얼얼한 마라탕");
		$("#p3").html("- 뜨끈한 삼계탕");
		$("#p4").html("- 건강가득 샐러드");
		$("#p5").html("- 맘스터치 싸이버거");
		
		$("#btn1").html("1순위 메뉴 보기");
		$("#btn2").html("2순위 메뉴 보기");
		$("#btn3").html("3순위 메뉴 보기");
		$("#btn4").html("후보 지우기");		
		
	});
	
	$(function(){
		$("#btn1").click(function(){			
			$("#p1").css("color","red");
			$("#p1").css("fontSize", "50px");			
		});	
		
		$("#btn2").click(function(){			
			$("#p2").css("color","blue");
			$("#p2").css("fontSize", "30px");					
		});

		$("#btn3").click(function(){			
			$("#p3").css("color","green");
			$("#p3").css("fontSize", "20px");					
		});
		
		$("#btn4").click(function(){	
			// 1, 2, 3순위 제이한 메뉴 태그 모두 숨기기
			$("#p4").hide();	
			$("#p4").hide();
		});		
		
	});


</script>

<title>Insert title here</title>
</head>
<style>
	h1{		
		background: gray;
	}

	button {
		margin: 15px;
	}
</style>
<body>

	<h1> 점심 메뉴 후보 </h1>
	<hr>
		
	<p id="p1"></p>
	<p id="p2"></p>	
	<p id="p3"></p>
	<p id="p4"></p>
	<p id="p5"></p>	
	
	<button id="btn1"></button>	
	<button id="btn2"></button>	
	<button id="btn3"></button>	
	<button id="btn4"></button>	<br>	

</body>
</html>