package test_0418;
import java.util.Scanner;

//추상클래스 shape 생성
abstract class Shape {
	
//선언, 넓이를 반환하는 함수	
	abstract public double getSize(); //abstract 앞에 안들어가네'''
	public void Print() {
		System.out.println("값 : ");
	};
}

// 상속, circle클래스
class Circle extends Shape {
	// 멤버변수 선언
	public int radius;
		
	// getSize() :: 반지름 *반지름* 3.14
	public double getSize(){
		return radius*radius*3.14;
	}
	
	
	public void Print() {
		System.out.println("반지름 값 : "+radius);
	
	};
}

class Triangle extends Shape {
		
	public int w;
	public int h;
	public boolean tf() {
		if(w*w+h*h==r*r) {
			return true;
		}
	};
	
	public int radius;
	
	public double getSize(){
		return radius*radius*3.14;
	}
	
	
	public void Print() {
		 if(tf==true) {
			 System.out.println("이 삼각형은 직각삼각형입니다.");
		}
		else {
			System.out.println("이 삼각형은 직각삼각형이 아닙니다.");	
		}
}

class Rectangle extends Shape {
	
	public int w;
	public int h;
	public int radius;
	
	public double getSize(){
		return radius*radius*3.14;
	}
	
	public void Print() {
		System.out.println("w:"+w+", h:"+h);
		
	}
}


public class exam_abstract_0418 {
	public static void main(String[] args) {
		Scanner sc = new Scanner (System.in);
	
	
	
	}
	
	
}
