<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
	// Jquery를 이용한 Ajax 구현
	// Ajax :: 로딩없이 페이지를 갱신하는 데에 도움을 주는 역할
	 
	// get(). post() 매소드 사용
	// $.get("받아올데이터", "콜백함수")
	
	$(function() {
		$("#btn").click(function(){
			$.get("text.txt", function(data, status){
				alert("통신 성공!!!!!!!!!!!!!");
				$("p").html("데이터: " +data+"<br> 상태: "+status);
			});
		});
	});
	
	// $.post("데이터저장할공간", 데이터, "콜백함수")
	$(document).ready(function(){
  $("#btn2").click(function(){
    $.post("text_post.txt",
    {
      name: "Donald Duck",
      city: "Duckburg"
    },
    function(data,status){
      alert("Data: " + data + "\nStatus: " + status);
    });
  });
});
	
	$(function(){
		$("#btn3").click(function(){
			$.post("text_post.txt", 
					{
					 name : "eunsil", 
					 age : 34
					},
					function(data,status){						
						$("#post").html("데이터:"+data+"<br> 상태 : " +status);
					});
		});
	});
	
</script>

<title>Insert title here</title>
</head>
<body>
	<button id="btn">get</button><br>
	<button id="btn2">post</button><br>
	<button id="btn3">post2</button>
	<p id="p"></p>
	<p id="post"></p>

</body>
</html>