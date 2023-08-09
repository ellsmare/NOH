package test_0412;
import java.util.Scanner;

public class Switch_0412 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		//평점 입력받아서 학점 출력하기 _Switch문 사용
		int score;
		System.out.print("평점을 입력하세요:");
		score = sc.nextInt();
		
		// Switch(값을 비교할 변수v) { 
		//   case 값1: [값1]과 v가 같을 경우 명령문 실행 
		//	 break;  :: break문이 없으면 밑에 있는 명령문도 모두 실행
		//   case 값2: [값2]과 v가 같을 경우 명령문 실행
		// default :   만족하는 값이 없는 경우 명령문 실행
		// }
		
		//if문과 switch문은 다르다 --> 알고리즘적 사고 필요
		
		score=score/10;
		
		switch(score) {
		case 10:
		case 9:
			System.out.println("A학점입니다.");
			break;
		case 8:
			System.out.println("B학점입니다.");
			break;
		case 7:
			System.out.println("C학점입니다.");
			break;
		case 6:
			System.out.println("D학점입니다.");
			break;
		default:
			System.out.println("F학점입니다.");
		}
		
}
}
