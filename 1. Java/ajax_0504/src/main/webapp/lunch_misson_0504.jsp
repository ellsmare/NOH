<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!--
 �Ʒ��� ���� ���������Դϴ�.
 [��ư ��ġ]
 
 << ���ݱ��� �����ߴ� ������ �ҷ��ɴϴ�. >>
 
 *java
 [��ư ��ġ]
 *html/css
 [��ư ��ġ]
 *JavaScript
 [��ư ��ġ]
 *Ajax
 [��ư ��ġ]
 
 �Ʒ����� ����, ����� �����Բ� �ڵ� �ۼ�
 * 5���� txt ���� ����
 introduce.txt -> �ڱ�Ұ� ����
 Java.txt -> java ��������
 html.txt -> html ��������
 Js.txt    -> Js ��������
 Ajax.txt  -> Ajax ��������
 
 �� ��ư�� ������ txt ������ �ҷ����Բ�
 (ongrogress �ݹ� �Լ��� �߰��� ���� :: alert()�Լ� ���)
 
  -->
  
  	<p> �Ʒ��� ���� ���������Դϴ�. </p>
  	<button id="intro" onclick="intro()"> �ڱ�Ұ� ���� </button>
  	
  	<p> ���ݱ��� �����ߴ� ������ �ҷ��ɴϴ�. </p>
  	
  	<p> * Java </p>
  	<button id="ja" onclick="intro2()"> �ڱ�Ұ� ���� </button>
  	
  	<p> * html/css </p>
  	<button id="ht" onclick="intro3()"> �ڱ�Ұ� ���� </button>
  	
  	<p> * JavaScript  </p>
  	<button id="jas" onclick="intro4()"> �ڱ�Ұ� ���� </button>
  	
  	<p> * Ajax  </p>
  	<button id="aj" onclick="intro5()"> �ڱ�Ұ� ���� </button>
  
  
	<script type="text/javascript">
	function intro() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){
			document.getElementById("intro").innerHTML=this.responseText;			
		}
		
		xhttp.onprogress=function(){
			alert("��������");
		}
		
		xhttp.open("GET", "introduce.txt");		
		xhttp.send();		
	}
	
	function intro2() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("ja").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<���ݱ��� �����ߴ� ������ �ҷ��ɴϴ�.>>");
		}
			
		xhttp.open("GET", "Java.txt");
		xhttp.send();		
	}
	
	function intro3() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("ht").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<���ݱ��� �����ߴ� ������ �ҷ��ɴϴ�.>>");
		}
			
		xhttp.open("GET", "html.txt");
		xhttp.send();		
	}
	
	function intro4() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("jas").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<���ݱ��� �����ߴ� ������ �ҷ��ɴϴ�.>>");
		}
			
		xhttp.open("GET", "Js.txt");
		xhttp.send();		
	}
	
	function intro5() {
		let xhttp=new XMLHttpRequest();

		xhttp.onload=function(){			
			document.getElementById("aj").innerHTML=this.responseText;					
		}
		
		xhttp.onprogress=function(){
			alert("<<���ݱ��� �����ߴ� ������ �ҷ��ɴϴ�.>>");
		}
			
		xhttp.open("GET", "Ajax.txt");
		xhttp.send();		
	}
	
	</script>
	
	
	
</body>
</html>