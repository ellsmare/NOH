package test_0417;
import java.util.Scanner;

//책 클래스 :: class 클래스이름{ 멤버 나열 }
class Book {
	// 멤버 변수
	private String name;
	public String writer;
	public String publish;
	public int year;

	// getter, setter
	// this :: 호출당한 객체 자신을 가리킨다	
public String getName() { 
	// getName() :: 함수를 호출한 객체의 name값 반환
		return name;
	}

public void setName(String name) {	
	// setName(String name) :: 함수를 호출한 객체의 name값을 매개변수로 받은 값 설정
		this.name = name;
	}

	// 멤버 함수(메소드)
	// Print() 함수 :: 모든 멤버 변수 값 출력하는 메소드 만들기 
	public void Print() {
		System.out.println("책이름:"+name);
		System.out.println("저자이름:"+writer);
		System.out.println("출판사:"+publish);
		System.out.println("출판연도:"+year+"\n");
	}
	
	// 메소드이름 : Book   
	public Book() {	// 책 클래스에 대한 생성자
		System.out.println("책 클래스에 대한 객체 생성을 수행합니다.");
		name="None";
		writer="None";
		publish="None";
		year=0;
	}
	
	// 메소드이름 : Book  
	// 오버로딩 :: ﻿ 메소드의 이름은 같지만, 매개변수의 구성이 다른 경우 공존해서 사용 ﻿
	public Book(String n, String w, String p, int y) {	// 매개변수 n,w,p,y 초기화
		System.out.println("책 클래스에 대한 객체 생성을 수행합니다.");
		name=n;
		writer=w;
		publish=p;
		year=y;
	}
	
}

public class book_0417 {
		public static void main(String[] args) {
				
			// 객체 생성
			// [클래스명] [객체명] = new [생성자 호출];
			
		// 책 클래스에 대한 생성자 :: Book메소드()
		//Book java = new Book();
		Book Sql = new Book();
			
			// 책 클래스에 대한 생성자 :: Book메소드(매개변수 n,w,p,y) 
			Book java = new Book("Java", "Noh","NEMO", 2030);
			//Book Sql = new Book("C++", "Lee","NEMO", 1999);
			
		// 객체 멤버 호출, 참조
		// [객체명]. [객체에 있는 멤버변수/함수 이름];
		//java.setName("hello world");
		//java.writer="Lee";
		//java.publish="nemo";
		//java.year=2020;
			
			Sql.setName("hi");
			Sql.writer="Kim";
			Sql.publish="nemo";
			Sql.year=2023;
			
			java.Print();
			Sql.Print();		
		}
	}