<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
// ��ư ������ �̹����� ������ �ٲ�� �̺�Ʈ ����

// html �±� ���� :: ��ư 1��, �̹����±� 1��, p �Ǵ� div �±� 1��

// �����ϸ�, �̹����±׿� p/div �±׿� ���� ������ �̹����� txt ������ �ҷ����Բ�
//(�Ѵ� ajax �̿�, ������ ���� �޾ƿ����� �Ѵ�. html �Ӽ� x)

// ��ư ������,  �̹����±׿� p/div �±��� �ؽ�Ʈ�� �ٲ���Ѵ�.
//(�ٲ� �̹����� �ؽ�Ʈ ���� ������ ���� �޾ƿ����� �Ѵ�. html �Ӽ� x)

// ���� ��Ǯ� ���⿡ Ǯ�̹ٷ��ϱ�~~ 

	$(document).ready(function(){
		//1. ������ â�� ������ �̹����±׿� txt ������ �ҷ�����
		//img �±װ� �������̸� img[~~~]
		$("img").attr("src", "imgfile.jpg");
		$("img").css("width", "300px");
		$("div").load("get_mission_0504.txt");				
	});
	
	$(function(){
		$("#btn").click(function(){
			$.get("get_text_0504.txt", function(data,status){
				alert("��� ��� : " +status)				
				// �ҷ����°��� �ƴ϶� data�� ����
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

<button id="btn"> Ŭ��!! �̹��� ����</button> <br>
<img>
<div></div><br>




</body>
</html>