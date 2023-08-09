package test_0412;
import java.util.Scanner;

public class IF_0412 {
	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		
//예제) 입력받는 평점에 따라 학점을 출력하기
		
		//1. 평점 입력받기
		System.out.print("평점을 입력하세요:");
		int score;
		score=sc.nextInt();

		//2. 값을 비교해서 학점 출력하기 => 조건문
		// IF문만 사용할때 :: 조건 연산자를 사용해서 조건문 작성
		// IF- else if - else문 사용 :: 문법 위치, 오류나옴 
		if(score>=90) { 
			// 소괄호 :: 조건문
			// 중괄호 :: 조건문이 참이면, 명령문 실행
			System.out.println("A학점입니다.");
		}			
		else if(score>=80) {
			System.out.println("B학점입니다.");
		}
		else if(score>=70) {
			System.out.println("C학점입니다.");
		}
		else if(score>=60) {
			System.out.println("D학점입니다");
		}
		else {
			// 위의 조건들을 모두 만족하지 않는다면~~ 명령문 실행
			System.out.println("F학점입니다.");
		}		
	}

}
