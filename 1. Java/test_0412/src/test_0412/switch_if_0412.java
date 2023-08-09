package test_0412;
import java.util.Scanner;

public class switch_if_0412 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int score;
		System.out.print("평점을 입력하세요:");
		score = sc.nextInt();
		
		score=score/10;
		
		if(score==10 || score==9) {
			System.out.println("A학점입니다.");
		}
		else if(score==8) {
			System.out.println("B학점입니다.");
		}
		else if(score==7) {
			System.out.println("C학점입니다.");
		}	
		else if(score==6) {
			System.out.println("D학점입니다.");
		}		
		else
			System.out.println("F학점입니다.");
			}	
		}
		

