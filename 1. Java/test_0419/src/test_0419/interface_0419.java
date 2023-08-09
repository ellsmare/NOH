package test_0419;

// 인터페이스  "추상 클래스와 매우 유사" 
//:: "구체적으로 명시된 멤버 함수가 거의 없다고 보아도 됨"	
//:: "인터페이스의 모든 필드는 변수가 아닌 상수로 취급함"

//interface 키워드를 이용해 인터페이스 구현
interface Animal {
	
	//멤버 함수 :: abstract 모두 추상 클래스 선언
	//필드 : final 모두 상수로 선언
	// 상수 :: 고정된 값, 상수선언 방법(final)
	// final :: 상수를 선언할 때 사용되는 키워드
	// 처음 들어가는 값에서 변경 x, 초기값
	
	// static :: 해당 클래스를 통해 만들어진 객체가 공유하는 값
	public static final String Location="00동물원";
	abstract public void cry();
		
	}

//인터페이스 상속 :: implements
class Cat implements Animal{ 
	
	// 멤버 : Location 상수, cry() 함수
	public void cry() {
		System.out.println("ddd");
	}


public class interface_0419 {
	public static void main(String[] args) {
	// 추상클래스와 마찬가지로, 인터페이스 자체만으로 객체 생성 x
		// Animal a = new Animal();
		
			Cat c=new Cat();
			System.out.println("위치한 곳:"+c.Location);
			c.cry();
		}

		}
		
	}
