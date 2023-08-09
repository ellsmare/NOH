<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
	// Jquery를 이용한 Ajax 구현
	// Ajax :: 로딩없이 페이지를 갱신하는 데에 도움을 주는 역할
	// 
	$(function(){		
		$("#btn").click(function(){
			$("#p").load("text.txt");
		});		
	});

</script>

<title>Insert title here</title>
</head>
<body>
	<button id="btn">버튼</button>
	<p id="p"></p>

</body>
</html>