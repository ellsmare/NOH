<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	$(function(){
		
		document.getElementById("st1_p").innerHTML="된장찌개 정식";
		document.getElementById("st2_p").innerHTML="김치찌개 정식";
		document.getElementById("st3_p").innerHTML="삼계탕";
		document.getElementById("rm_p1").innerHTML=this.responseText;
		document.getElementById("rm_p2").innerHTML="샐러드";
			
		$("#st1").click(function(){			
			$("#st1_p").css("color","red");
			$("#st1_p").css("fontSize", "50px");			
		});	
		
		$("#st2").click(function(){			
			$("#st2_p").css("color","blue");
			$("#st2_p").css("fontSize", "30px");					
		});

		$("#st3").click(function(){			
			$("#st3_p").css("color","green");
			$("#st3_p").css("fontSize", "20px");					
		});
		
		$("#rm").click(function(){			
			$("#rm_p1").hide();	
			$("#rm_p2").hide();
		});		
		
	});



</script>

<title>Insert title here</title>
</head>
<style>
	button {
		margin: 15px;
	}
</style>
<body>

	<h1> 점심 메뉴 후보 </h1>
	<hr><br>
	<button id="st1"> 1순위 메뉴 보기 </button>	<br>
	<button id="st2"> 2순위 메뉴 보기 </button>	<br>
	<button id="st3"> 3순위 메뉴 보기 </button>	<br>
	<button id="rm"> 후보자 지우기 </button>		<br>
	
	<p id="st1_p"></p>
	<p id="st2_p"></p>	
	<p id="st3_p"></p>
	<p id="rm_p1"></p>
	<p id="rm_p2"></p>
		

</body>
</html>