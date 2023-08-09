package test_0413;

public class exam_369 {
	public static void main(String[] args) {
		//369게임
		
		//무한 반복문으로 반복문 	true
		//100이 될떄까지 진행  		break
		//3,6,9 없으면 숫자 출력
		//3,6,9 있으면 "박수 짝"
				
		// if((n1%3==0&&n1!=0)||(n2%3==0&&n2!=0) 
		//(i/3)==0 || (j/3)==0
			
		int num=1;
		while(true) {
			if(num>=100) { 
				break;}
			
			int i = num/10;       //몫 
			int j = num%10; 	  //나머지 
				
				if(i==3 || i==6 || i==9 || j==3 || j==6 || j==9) {
					
					System.out.println("박수짝");
					num++;
					continue;
				}
			System.out.println(num);	
			num++;	
							
		}

	}
}