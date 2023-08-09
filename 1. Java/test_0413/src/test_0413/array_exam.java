package test_0413;
import java.util.Scanner;

public class array_exam {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		// 1. 5명의 학생 성적 입력
		
		// for(int i=0;i>5;i++){
		// array[i]=sc.nextInt(); }
		
		int score[] = new int [5];
		
		score[0]=sc.nextInt();
		score[1]=sc.nextInt();
		score[2]=sc.nextInt();
		score[3]=sc.nextInt();
		score[4]=sc.nextInt();
			
		// 2. 합계 구하기
		int sum=0;
		for(int i=0; i<5; i++) {
		sum += score[i];
		}
		
		// 3. 평균 구하기
		//sum이 int값이어서 실수값이 제대로 안나옴, 형변환사용
		double avg=(double)sum/5;
		
		// 4. 합계와 평균 출력
		System.out.println("합계 : " +sum);
		System.out.println("평균 : " +avg);
		
	}
}
