package test_0411;
import java.util.Scanner;


public class exam2 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
				
		System.out.print("정수 두 개를 입력하시오:");		
		int num=sc.nextInt();
		int num2=sc.nextInt();
		// 다른 스캔 형태
		// int num, num2;
		// num=sc.nextInt();
		// num2=sc.nextInt();	
		
		
		System.out.println("덧셈:"+(num+num2));
		System.out.println("뺄셈:"+(num-num2));	
		System.out.println("곱셈:"+(num*num2));
		System.out.println("나눗셈:"+(num/num2));
		System.out.println("나머지:"+(num%num2));

		// 출력문에서 +는 이어주는 역할
		// 혼동을 주지 않기 위해 소괄호() 사용
		
	}	
}
