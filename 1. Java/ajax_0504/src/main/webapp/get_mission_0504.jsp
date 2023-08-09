<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
// 버튼 누르면 이미지와 설명이 바뀌는 이벤트 구현

// html 태그 구성 :: 버튼 1개, 이미지태그 1개, p 또는 div 태그 1개

// 실행하면, 이미지태그와 p/div 태그에 각각 임의의 이미지와 txt 파일을 불러오게끔
//(둘다 ajax 이용, 서버를 통해 받아오도록 한다. html 속성 x)

// 버튼 누르면,  이미지태그와 p/div 태그의 텍스트가 바뀌도록한다.
//(바뀔 이미지와 텍스트 또한 서버를 통해 받아오도록 한다. html 속성 x)

// 거의 못풀어서 여기에 풀이바로하기~~ 

	$(document).ready(function(){
		//1. 브라우저 창이 열리면 이미지태그와 txt 파일을 불러오기
		//img 태그가 여러개이면 img[~~~]
		$("img").attr("src", "imgfile.jpg");
		$("img").css("width", "300px");
		$("div").load("get_mission_0504.txt");				
	});
	
	$(function(){
		$("#btn").click(function(){
			$.get("get_text_0504.txt", function(data,status){
				alert("통신 결과 : " +status)				
				// 불러오는것이 아니라 data를 넣음
				$("div").html(data);							
			});
			
			$("img").attr("src", "imgfile2.jpg");
			$("img").css("width", "300px");	
		});
	});

	// src="https://i.pinimg.com/474x/03/1b/59/031b5940d175ab855a0ca8533de85625.jpg"
	// https://i.pinimg.com/originals/87/44/38/8744387c1e66d5c8d13e8ef23d0235d4.jpg
	
</script>

<title>Insert title here</title>
</head>
<style>
	button{
		margin: 15px;
	}
</style>
<body>

<button id="btn"> 클릭!! 이미지 변경</button> <br>
<img>
<div></div><br>




</body>
</html>