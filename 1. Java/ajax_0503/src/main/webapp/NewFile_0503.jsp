<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!--  -->
	<!-- id�� btn�̰�, Ŭ���ϸ� Func()�Լ��� �����ϴ�   -->
	<button id="btn" onclick="Func()">��ư�� �����ּ���</button>
	<p id="text"></p>   <!-- onprogress -->
	<p id="text1"></p>	<!-- onload/text ���� -->
	<p id="test"></p>	<!-- onload -->
	

	<!-- "Ajax�� ���α׷��� ���� �ƴϴ� "
	Ajax :: �ε����� �������� �����ϰ�, ��׶���-> �������� ������ ���ۿ� ���	
	(�������� ������ ��ȯ�� ���)
	(Js �̺�Ʈ ������ �����ִ� ���̺귯��)�� Ajax�� �ƴ϶� J����
	���̺귯�� :: �Լ��� ������ ������ �ִ�
	-->
	<!-- "�ٴҶ�(����) Js ���� ����" or Jquery ���� ���� -->
	
	<script type="text/javascript">
	// XMLttpRequest ��ü(xhr) :: �� ������ "������ ��ȯ"�� ��� (Js���� �����ڷ� ����)
	// �� ��ü�� ���ؼ�, ������ �� �Ϻθ� ������Ʈ ����
	
// *�ݹ��Լ� ����
// onload :: xhr��ü�� �����κ��� �����͸� ���������� ���� �� ������ �Լ�
// onerror :: xhr��ü ���� ������ �߽�/���� �Ǵ� xhr��ü ��ü�� ���� �߻��� ������ �Լ�
// onprogress :: xhr��ü���� ������ ���Ź��� �� ȣ���� �Լ�
// ���				
	function Func() {			
		// 1. XMLttpRequest ��ü ���� -> ����� ������ �̿�
		// let ��ü�� = new XMLttpRequest();
		let xhttp=new XMLHttpRequest();
			
			// 2. �ݹ��Լ�(������ ����/�߽��� �ҽ� �����ϴ� �Լ�) ����
			// xhttp��ü��.�ݹ��Լ��� = function(){
			// 		(�ݹ��Լ��� �����Ű�� ������ ������) ������ ��ɹ�;}
			// �ݹ��Լ� ������ ���� ����
		xhttp.onload=function(){ // ������ ���������� ���� �޾��� ��,
			document.getElementById("text").innerHTML="�������ߴ�!! ��Ÿ;;;";			
			}
			
		//xhttp.onload=function(){  
		//	document.getElementById("text1").innerHTML=this.responseText;}	
			
		xhttp.onprogress=function(){  
			document.getElementById("test").innerHTML="���";
			}		
			
			// 3. ������ ��û ������(���� �ϴ°͵� ����) 
		 	//     :: open(), send() ���� �߿�
		 	// open() :: ������ ��û�� ���� ���
		 		// xhr��ü��.open("GET", "������ ��û�� ������");
				// GET :: �����κ��� �����͸� �޾ƿ� �� ��� (=������ ��û)
				// POST :: ������ ������ ���� �� ���
		 	// send() :: ������ ��û�� ����
		 		// xhr��ü��.send(); :: post ������ ��, string�� �Ű����� �ʿ�
		 			//ex) xhr��ü��.send(string);
		xhttp.open("GET", "today_0503.txt"); 
			// "today_0503.txt" ������ �޾ƿ� ���� ��û
		xhttp.send();
			// GET ���� ���, :: open()�� �κ�° �Ű����� �ʿ�
			// POST ���� ���, :: send()�� ù��° �Ű����� �ʿ�
	}
		
	</script>		
</body>
</html>