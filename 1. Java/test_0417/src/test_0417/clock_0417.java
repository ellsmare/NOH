package test_0417;
import java.util.Scanner;

//﻿ clock함수 :: 현재 시각을 전달받아 양식대로 출력하는 함수
// ap함수 :: 현재가 오전인지 오후인지 출력하는 함수

public class clock_0417 {
	
// 2. clock 함수 만들기 :: 매개변수 h, m, s	
	// void :: 무엇이 하나도 없는
	//     :: 보이드를 반환형으로 선언할 떄는 return문 사용 x	
	static void clock(int hh, int mm, int ss) {
		System.out.println("현재 시각은 "+hh+"시 "+mm+"분 "+ss+"초 입니다");	
	}

// 3. ap 함수 만들기 :: 시간만 필요함	
	// void :: return문 사용 x, 보이드를 반환형으로 선언	
	static void ap(int hh) {
		if(hh>=12) {
			System.out.println("오후입니다.");
		}
		else {
		System.out.println("현재는 오전입니다.");
		}
	}
			 
	public static void main(String[] args) {
		Scanner sc=new Scanner (System.in);
	
		// 1. 시, 분, 초 입력받기
		int h = sc.nextInt();
		int m = sc.nextInt();
		int s = sc.nextInt();
	
		// 4. 현재 시각 출력하는 함수 호출(참조)
		clock(h,m,s);
		ap(h);
	}
}