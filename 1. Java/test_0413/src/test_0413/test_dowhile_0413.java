package test_0413;

public class test_dowhile_0413 {
	public static void main(String[] args) {
		// do while문 :: 1회 반드시 실행		
		// do {
		// 		명령문;			
		//	} while(조건문);
		
		int var=1;
		do {
			System.out.println(var);
			var++;
		} while(var<=10);		
		
		// 조건문, 반복문의 조건식 :: true 실행
		// 조건문, 반복문의 조건식 :: false 실행x
		int a=1;
		do {
			System.out.println("dowhile : "+a);
			a++;
		} while(false);	
	}
}
