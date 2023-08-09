
package test_0413;
import java.util.Scanner;

public class test_while_0413 {
	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
		
		//1부터 10까지 출력
		int num=1;
		while(true) { //true :: 무한반복
			
			if(num>10) { //num의 값이 11이상 break문 실행
				break;
			}
			System.out.println(num);
			num++;
		}
		
		//1부터 10까지 홀수만 출력
		int n=1;
		while(n<=10) {
			if(n%2==1) {
				System.out.println("홀수만 출력 : "+n);
			}
			n++;
		}
	}
}
