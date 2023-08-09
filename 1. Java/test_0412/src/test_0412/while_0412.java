package test_0412;
import java.util.Scanner;

public class while_0412 {
	public static void main(String[] args) {
	
	Scanner sc = new Scanner(System.in);
	
	//1~10까지 출력하는 문제, while문 사용	
	//i가 1씩 증가, 출력문 
	int i=1; 

	//while(조건문) { 반복할 명령문; //끝을 설정하기}
	while(i<11) {
		System.out.print(i+" ");
		i++;
		
		}
	}
}