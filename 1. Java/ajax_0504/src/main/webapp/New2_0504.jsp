<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
	// Jquery�� �̿��� Ajax ����
	// Ajax :: �ε����� �������� �����ϴ� ���� ������ �ִ� ����
	 
	// get(). post() �żҵ� ���
	// $.get("�޾ƿõ�����", "�ݹ��Լ�")
	
	$(function() {
		$("#btn").click(function(){
			$.get("text.txt", function(data, status){
				alert("��� ����!!!!!!!!!!!!!");
				$("p").html("������: " +data+"<br> ����: "+status);
			});
		});
	});
	
	// $.post("�����������Ұ���", ������, "�ݹ��Լ�")
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
						$("#post").html("������:"+data+"<br> ���� : " +status);
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