<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
<script>
	// Jquery���� script �±״� ���� head �ȿ��� �ۼ���
	// Jquery :: Js ��� ����� �����ϰ� �ϴ� ���� ������ �ִ� Js ���̺귯��
	// Jquery�� ���α׷��� �� �ƴϴ�
	
	// Jquery �⺻ ���� :: $("������").�����Լ�(){~~ ������ ���� function ����}
	
	// document.onload == $(document).ready == $
	// :: ����(Ȩ������)�� �ҷ��´�, Ȩ�������� �̷��� "�����Ѵ�"
	// :: (document).ready ��������
	
	// ''�����ؼ� Ȩ�������� �ҷ��� ��, �Ʒ� �Լ��� �����϶�.
	$(document).ready(function(){
		// ''��ư �±׸� Ŭ���ϸ� �Ʒ� �Լ��� �����϶�.""
		// (�̶�, html�� �ִ� ��� button �±׿� �����Ѵ�)
  		$("button").click(function(){
  			// "html�� �ִ� ��� p�±� ��Ҹ� ���ܶ�."
   			 $("p").hide();
  		});
	});
	// -> $"��ư�±׸� Ŭ���ϸ�", $"��� p�±� ��Ҹ� ���ܶ�."
	
	// $"����"�ϸ�, +$"id�� h�� �±׿� �ش� ���ڿ� �����ϱ� 
	// Js �ڵ嵵 �Բ�(ȥ��) �ۼ� o
	$(function(){
		document.getElementById("h").innerHTML="����!!";
	});
	
	$(function(){
		// id�� ���� #
		$("#j").html("j���� ���� ����");
	});
	
	// Css ó�� -> �±� style�� ���� ���� (�̺�Ʈ�� ����)
	// id ������ #, class ������ .(����)
	
	// $"����"�ϸ�, +$"id�� c�� �±��� �۾� "����"�� "yellow"�� �����϶� 
	// j���� css �˻��̿� :: css("�Ӽ���", "�Ӽ���");
	$(function(){
		$("#c").css("color", "yellow");
		
	});
	
	// ������ �����غ���
	$(function(){ 					  // $"������ �ϸ�"
		// $"id�� c�� �±��� �۾� "����"�� "yellow"�� ����
		$("#h").css("color", "blue"); 
		
		//$"p�±׸� Ŭ���ϸ�"
		$("p").click(function(){  	  
			$("p").css("fontSize", "25px");	 
			$("p").css("color", "red");
		})
	});
	
	
	

	</script>

</head>
<body>
	<h1 id="h"></h1>
	<h1 id="c">�� ������ ������ ����˴ϴ�.</h1>
	<h2 id="j">This is a heading</h2>

	<p>This is a paragraph.</p>
	<p>This is another paragraph.</p>

	<button>Click me</button>
</body>
</html>