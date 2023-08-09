package test_0417;
import java.util.Scanner;

public class class_function_0417 {
	// 함수	:: 프로그램에게 지시할 명령문들의 묶음
	//		:: 함수 안에 함수 선언 할 수 없다
	// 반환(return)	:: "뱉어낸다"
	// 매개변수 :: 함수를 실행할 때, 필요한 정보를 전달받는 역할
	//			 순서대로 전달받음
	
	// 함수 선언부 원형
	// 반환형 함수이름(매개변수타입 매개변수이름, ...){명령문}
// 반환형 :: 함수에서 "뱉어내는" 값의 타입
//		:: 실제로 반환하는 값의 타입과 동일하지 않으면 에러 발생 
	static int sum(int a, int b) {
		System.out.println("덧셉 함수 이용");
		return a+b;
	}	
	
	// 	main 함수 ::  프로그램 실행하면, main 함수 내용 실행
	public static void main(String[] args) {
		Scanner sc=new Scanner (System.in);

		// 예제 :: 두 개의 숫자를 입력 받고, 합 출력	
		// 1. 2개의 숫자를 입력
			int a=sc.nextInt();
			int b=sc.nextInt();
			
		// 2. 2개의 숫자 합 출력
		// 함수 호출 :: [함수이름](전송할 값, ...);
		// 전송할 값의 개수는 매개변수쌍의 개수와 동일해야함	
		// 반환값 :: 함수를 호출한 위치에서 "받아낸다"
			System.out.println("a+b= "+sum(a,b));
		}
		
	}
