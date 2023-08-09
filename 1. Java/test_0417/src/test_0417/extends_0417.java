package test_0417;

// 상속 :: 부모가 자식에게 "물려준다" 
//        부모와 자식이라는 관계가 존재한다
//  => extends 키워드를 사용해, 부모 클래스의 멤버들의 자식 클래스에게 물려주는 문법
// 자식 클래스의 멤버 = 부모 클래스의 멤버 (+ 자신만의 멤버)

//오버라이딩 :: 부모 클래스의 메소드를 자식 클래스에서 "재정의" 하는 문법 
//		   :: 덮어쓰기
//		   :: 내일 추가하자!!!!!!!

// 예제 :: Phone, SmartPhone 클래스 구현
class Phone {				// 2G폰 클래래스, 부모 클래스
	public String tel;		
	public boolean touch;	//탭 가능 여부

	public void Print() {
		System.out.println("전화번호 : "+tel);
		System.out.println("탭 가능 여부 : "+touch);
		}
	}

class SmartPhone extends Phone {// 5G폰 클래스 : 기능이 더 많다, 자식 클래스
	// 부모 클래스의 멤버 변수를 상속받음 (tel, touch) 
	//예시) 부모 클래스의 멤버들을 복사하여 자식클래스에 붙여넣는다 - 틀까지 전체
	public String os; 	//운영체제
	
	public void Print() {
		System.out.println("전화번호: "+this.tel);
		System.out.println("탭 가능 여부: "+this.touch);
		System.out.println("운영체제: "+this.os);
		}
	}

public class extends_0417 {
	public static void main(String[] args) {
	
		Phone p = new Phone();
		p.tel="10101010";
		p.touch=true;
				
		SmartPhone LG = new SmartPhone();
		LG.tel="01012345678";
		LG.touch=false;
		LG.os="sendwich";
						
		p.Print();
		System.out.println();
		LG.Print();
		
	}
	

	
	
	
	
	

}
