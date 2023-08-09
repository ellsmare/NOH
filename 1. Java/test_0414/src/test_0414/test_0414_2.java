package test_0414;
import java.util.Scanner;
		
public class test_0414_2 {
	public static void main(String[] args) {
		Scanner sc=new Scanner (System.in);
			
	// 1. 4명 학생의 국영수 점수 입력 
	// 학생 4명, 과목 3개 = 행4, 열3 ::2차원 배열
		int stu[][] =new int [4][3];
		
		for(int i=0;i<4;i++) {  	
			for(int j=0;j<3;j++) {	
		//i=0, j=0, 1, 2 실행 (0,0), (0,1), (0,2) 
		//i=1, j=0, 1, 2 실행 (1,0), (1,1), (1,2)
		//i=2, j=0, 1, 2 실행 (2,0), (2,1), (2,2)
		//i=3, j=0, 1, 2 실행 (3,0), (3,1), (3,2)
				
			stu[i][j]=sc.nextInt();		
			
			}
		} // for문 벗어나기!!
		
	// 2. 각 학생의 성적 평균 :: 합계/과목수
	// 형변환, 3.0 두 가지 방법 있다.
		
		for(int i=0;i<4;i++) {  
			int sum=0;	
			for(int j=0;j<3;j++) {	
				sum+=stu[i][j];	
			}			
			
			double avg=sum/3.0; 
			
	// 3. 출력				
			System.out.println((char)(i+'A')+"번째 학생 평균 : "+avg);
			//i는 0, 1, 2 을 반복 :: 'A' +0, +1, +2 의 char형 변환
		}
	}
}
