package test_0411;

import java.util.Scanner;

public class test0411_2 {
	public static void main(String[] args) {
		
		System.out.println("두 입력 값: "+(1+2));
		System.out.println("이름:");
		Scanner sc = new Scanner(System.in);
		String Na=sc.next();
		System.out.println("이름을 입력:"+Na);
		
//문자여러개 String    ~~ String Na=sc.next();
//문자하나 char    ~~ char blood=sc.next().charAt(0);
		
		int v1=sc.nextInt();
		long v2=sc.nextLong();
		float v3=sc.nextFloat();
		double v4=sc.nextDouble();
		char v5=sc.next().charAt(0); // 0번째부터 시작
		
		
		
	}

}
