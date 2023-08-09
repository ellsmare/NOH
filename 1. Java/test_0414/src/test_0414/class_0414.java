package test_0414;

// 객체 :: 실행활에서 존재하는 모든 물체/사물
//     :: 클래스를 통해 만들어진 것

//클래스 :: 객체를 만들기 위해 존재하는 "틀" -> 객체를 찍어내는 역할
//같은 틀에서 같은 모양(틀)의 객체들이 나오지만 내용은 다음
//자료형 및 타입을 임의로 정의해서 사용하는 "틀"

//클래스     ::   객체          :: 인스턴스
//붕어빵 기계 ::   만들어진 붕어빵  :: 다양한 소의 붕어빵  
	
//상태 :: 임의로 변경하지 않는 한 변동이 없다
	// 상태 -> 멤버 변수
	// 회원정보 :: 이름, 전화번호, 주소, 성별 등등

//행동 ::함수는 필요할 때만 사용
	// 행동 -> 멤버 함수   

class Person{
	// 멤버변수 선언
	// [접근제어자] [타입] [변수이름];
	public String name; //이름
	public String gender; //성별
}

// 파일 안에 대표 클래스가 반드시 하나 있어야 한다. (하나만 존재)
public class class_0414 {		// 대표 클래스 :: main을 작성
	public static void main(String[] args) { // main 함수
				
		// 객체 생성
		// [클래스명] [객체명] = new [클래스명]();
		//"Person 타입(틀)의 객체 Pson를 선언하라"
		Person Pson = new Person();
		Person Park = new Person();
		
		//객체 멤버 접근
		Pson.name="eun";
		Pson.gender="Woman";
		
		Park.name="kIM";
		Park.gender="Male";
		
		System.out.println("Pson의 name : "+ Pson.name);
		System.out.println("Pson의 gender : "+ Pson.gender+"\n");
		
		System.out.println("Park의 name : "+ Park.name);
		System.out.println("Park의 gender : "+ Park.gender);
		
		
	}
}
