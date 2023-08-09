package test_0418; //추상 클래스 (+추상 매소드)
import java.util.Scanner;

// 추상 클래스 구현
// abstract class 클래스이름{클래스 들어갈 멤버}
// 추상 클래스에는 추상 메소드를 하나 이상을 포함해야함

// 동물	
abstract class Animal {	// 추상 클래스  ::부모 클래스
		
	// 본래 메소드는 함수 선언+ 구체화 형태가 같이 구성
	// 추상 메소드는 함수 선언만 함
	// abstract [메소드 선언부(접근제어자, 반환형, 함수이름 등)];
	abstract public void cry(); //함수선언
	}

class Cat extends Animal{ // 일반적인 클래스 :: 자식 클래스
	// 부모 클래스에서 선언만 되어있는 cry() 함수를 전달받은 상태
	// cry() 함수에 대한 명령문 작성이 자식 클래스에게 떠넘기고 있는 상태 
	//-> 오버라이딩(덮어쓰기) 필요함
	
	public void cry(){
		System.out.println("야옹");
}}

class Dog extends Animal{
		public void cry() {
			System.out.println("멍멍");
}}

public class Abstract_0418 {  // abstract "추상적인" 
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		// 추상클래스를 통해서 객체를 바로 생성할 수는 없다
		Cat c = new Cat();
		Dog d = new Dog();
		
		c.cry();
		d.cry();
		//추상클래스를 상속받은 클래스에서 구체화하여 객체를 생성해야함
		//자식클래스에서 부모클래스를 상속받아 재구성 후 사용 :: 오버라이딩
	}
}
