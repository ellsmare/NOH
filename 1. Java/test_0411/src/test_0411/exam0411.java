package test_0411;
import java.util.Scanner;

public class exam0411 {
	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		
		System.out.print("이름:");
		String NA=sc.next();
		System.out.print("내 이름은 "+NA);
		System.out.print("입니다.\n");
		
		
		System.out.print("나이:");
		int age=sc.nextInt(); 
//	정수 입력문을 실수를 입력할 경우 소수점 이하 제외
		
		System.out.print("나이는"+age);
		System.out.print("입니다.\n");
		
		
		System.out.print("키:");
		Double tal=sc.nextDouble();
		System.out.print("키는 "+tal);
		System.out.print("입니다.\n");
		
		
		System.out.print("혈액형:");
		char blood=sc.next().charAt(0); 
		//문자하나
		System.out.print("혈액형은 "+blood);
		System.out.print("입니다.\n");	
		
		
	}

}
