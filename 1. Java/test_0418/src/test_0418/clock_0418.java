package test_0418;
import java.util.Scanner;

							// 생성자와 자바의 이름 규칙
class clock {             // 클래식 이름 { [접근제어자] [타입] [변수이름];}
	public int hour;	 // 멤버 변수 :: ﻿시 hour, 분 min, 초 sec
	public int min;		  // (필드) [접근 제어자] [타입] [변수이름];
	public int sec;
	
	
	//public void print() {  //멤버 함수(메소드) :: 멤버함수는 public
	//	if(sec<10) {
	//		System.out.println(+hour+":"+min+":0"+sec+" ");
	//	}
	//	else {
	//	System.out.println(+hour+":"+min+":"+sec+" ");
	//	}
	//}
	
	public void print() {     //멤버 함수(메소드)
		
		// 시(hour)에 대한 출력문		
		if(this.hour<10) {
			System.out.print("0");
		}
			System.out.print(hour+":");
		
		// 분(min)에 대한 출력문
		if(this.min<10) {
			System.out.print("0");
		}
			System.out.print(min+":");
		
		// 초(sec)에 대한 출력문
		if(this.sec<10) {
			System.out.print("0");
		}
			System.out.println(sec);
		
	}
	
	
	public void ap() {           //멤버 함수(메소드)
//		if(hour>=12 && sec<10) {
//			System.out.println("현재는 오후입니다. PM "+(hour%12)+":"+min+":0"+sec);
//		}	
//		else if(hour>=12 && sec>=10)  {
//			System.out.println("현재는 오후입니다. PM "+(hour%12)+":"+min+":"+sec);
//		}
//		else if(hour<12 && sec<10){
//			System.out.println("현재는 오후입니다. PM "+(hour%12)+":"+min+":0"+sec);
//		}
//		else {
//		System.out.println("현재는 오전입니다. AM "+hour+":"+min+":"+sec);
//		}
		
		// 오전인지 오후인지 출력
		if(hour>=12) {
			System.out.print("현재는 오후입니다. PM ");
			hour -=12; // 다음 연산에 지장을 줄 수 있기 때문에, 비추천!!!!!!
			print();
		
		}
		else {
			System.out.print("현재는 오전입니다. AM ");
			print(); 	// 표준시각대로 출력  :: Print함수 이용
		}
		
			
	}
	
	// 생성자 :: public 클래스 이름(매개변수타입, 매개변수이름, ...){
	//					생성자료 실행할 명령들 }
	public clock(int h, int m, int s) {  										
		System.out.println("새로운 시각에 대한 객체 생성합니다.");
		this.hour=h;
		this.min=m;
		this.sec=s;
	}
}

public class clock_0418 {
	public static void main(String[] args) {
		Scanner sc=new Scanner (System.in);
		
		// 객체 생성:: [클래스명] [객체명] = new [클래스명]();
		clock Am = new clock(9, 10, 30); 	//생성자 변수개수와 동일하게 입력 (3개) 
		clock Pm = new clock(16, 40, 0);
			
		// 객체 멤버 호출, 참조
		// [객체명]. [객체에 있는 멤버변수/함수 이름];
		Am.print();
		Pm.print();
		
		Am.ap();
		Pm.ap();
		}
	}
		

