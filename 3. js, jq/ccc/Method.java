package ccc;

public class Method {
    // main() 메인 메소드 ::
    // (괄호안에 파라메타) ::
    // 접근제어 4개 중 2개 많이 사용 public 누구나, private 자기자신만
    // void 회피하다 리턴(데이터를 돌려줄 수 있다)을 명시:: 리턴하지 않는다
    public static void main(String[] args) {
        // 말하다 권유하다 ::  클래스에 메소드 존재
        // 객체와 객체 사이의 통신, 커뮤니케이션 :: 메소드(기능, 동사스럽게 이름짓기)

        // static 설정된 main메소드에서 add()메소드를 사용하기위해서는
        // 같은  static으로 설정 되어 있어야한다
        System.out.println("------------------");
        add(); // 호출하다 call하다
        System.out.println("------------------");
        }

    public static void add(){  //빈괄호 = 파라메타x
        int num1 = 10;
        int num2 = 20;

        int result = num1+num2;
        System.out.println(result);
    }
}
