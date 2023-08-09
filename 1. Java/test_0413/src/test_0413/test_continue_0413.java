package test_0413;

public class test_continue_0413 {
	public static void main(String[] args) {
		// continue :: 처음으로 돌아간다
				
		//1부터 10까지 홀수만 출력
		int n=1;
		while(n<=10) {
			if(n%2==0) {
				n++;
				continue;				
			}
			System.out.println("홀수만 출력 : "+n);
			n++;
			
		}

		
		
	}
}