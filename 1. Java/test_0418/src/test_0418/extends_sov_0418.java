package test_0418;
import java.util.Scanner;

//상속 
//스마트폰(부모) - 스마트클락(자식)

//clock 클래스의 print() 함수 :: 현재 시각 출력
//SmarkClock 클래스의 print() 함수 :: 현재 시각, 해당 기기 운영체제 버전, 현재까지 걷기 횟수
//객체 생성 :: clock 클래스에 대한 객체 생성, smartclock 클래스에 대한 객체 생성

//=> 각 객체에 대한 메소드 실행해보기 

//tcp스쿨 예습 - 자바-상속-쇼퍼


class Time {		// 부모 클래스 ::대문자로 바꾸니깐 된다;;;;; 생성자와 자바의 이름 규칙
	public int hour;
	public int min;
	public int sec;

					// 생성자
	public Time(int h, int m, int s) {
		System.out.println("Clock 생성자 실행");
		this.hour = h;
		this.min = m;
		this.sec = s;
	}
		
	// Print() 매소드
	public void Print() {
		System.out.println("현재 시각은 "+this.hour+"시"+this.min+"분"+this.sec+"분 입니다.");
		
	}
}

	//자식 클래스
class SmartClock extends Time {  
	public String os;
	public int walk;
	
	// 생성자 
	// 자식 클래스 생성자 실행 시, super()를 가장 먼저 실행해줘야한다. 	
	public SmartClock(int h, int m, int s, String os, int w) {
		super(h,m,s);  // 부모 클래스의 생성자를 실행하여 시분초의 정보를 초기화 한다
					   // :: 쌍이 맞아야 한다
		
		System.out.println("SmartClock 생성자 실행");
		
		this.os=os;
		this.walk=w;
	}
	
	
	public void Print() {
		System.out.println("현재 시각은 "+this.hour+"시"+this.min+"분"+this.sec+"초 입니다.");
		System.out.println("운영체제 : "+this.os);
		System.out.println("현재까지 걸은 횟수 : "+this.walk);

		}
	}

public class extends_sov_0418 {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
				
		// 객체 생성 과 값 입력을 동시에 시행
		System.out.print("c의 시, 분, 초 : ");
		Time c = new Time(sc.nextInt(), sc.nextInt(), sc.nextInt());
		c.Print();	
		System.out.println();
		
		
		// 입력값을 먼저 받은 후 SmartClock 객체 생성이 가능
		System.out.print("ss의 시, 분, 초, os, 걷는 횟수 : ");
		int h=sc.nextInt();
		int m=sc.nextInt();
		int s=sc.nextInt();
		String os=sc.next();
		int w=sc.nextInt();
		
		SmartClock ss = new SmartClock(h,m,s,os,w);
				
		System.out.println(s);
		ss.Print();
		
			
	}
	
}

