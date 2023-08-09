package test_0419;
import java.util.Scanner;

//Book 인터페이스
interface Book {
	
	// 필드: publish -> 상수
	public static final String publish="한빛미디어";
	
	// 메소드 : Pint(), updown2000() -> 추상 메소드
	// 인터페이스의 메소드 생성
	// abstract public [타입] [메소드이름];
	abstract public void Print();
	abstract public void updown2000();

}

//인터페이스 상속 :: implements
class Java implements Book {
	
	//필드선언
	public int year;
	public final String name="Java";
	
	// Pint() 메소드
	public void Print() {
		System.out.println("책이름: "+this.name);
		System.out.println("출판사: "+publish);
		System.out.println("계정년도: "+this.year);
		
	}
	
	// updown2000() 
	public void updown2000() {
		if(year>=2000) {
			System.out.println("개정된 버전입니다");
		} 
		else {
			System.out.println("개정되기 이전의 버전입니다");
			
		}
	}
	
	//생성자 구현하기 - 3개 중 2개는 상수
	public Java(int y) {
		this.year=y;
		
	}
	
}
	
class Python implements Book {
	public int year;
	public final String name="Python";
	
	// Pint() 메소드
		public void Print() {
			System.out.println("책이름: "+this.name);
			System.out.println("출판사: "+publish);
			System.out.println("계정년도: "+this.year);
			
		}
	
	// updown2000() 
	public void updown2000() {
		if(year>=2000) {
			System.out.println("개정된 버전입니다");
		} 
		else {
			System.out.println("개정되기 이전의 버전입니다");
			
		}
	}
	
	//생성자 구현하기 - 3개 중 2개는 상수
		public Python(int y) {
			this.year=y;
			
		}
}


public class interface_exam_0419 {
	public static void main(String[] args) {
		Scanner sc= new Scanner (System.in);
		
		System.out.print("Java의 계정년도를 입력하세요:");
		Java ja = new Java(sc.nextInt());
		ja.Print();
		ja.updown2000();
		
		System.out.println();
		System.out.print("Python의 계정년도를 입력하세요:");
		Python pt = new Python(sc.nextInt());
		pt.Print();
		pt.updown2000();
		
		
	}

}
