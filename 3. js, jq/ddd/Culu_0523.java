package ddd;
import java.util.Scanner;

public class Culu_0523 {
    public static void main(String[] args) {
        //
        Scanner sc = new Scanner(System.in);

        // 두 수 입력
        System.out.println("첫 번째 수 입력 : ");
        int num1 = sc.nextInt();
        System.out.println("두 번째 수 입력 : ");
        int num2 = sc.nextInt();

        // 연산자 입력
        System.out.println("연산자 입력 : ");
        String a = sc.next();

        // 연산자 입력받아서 해당하는 작업만 실행
        // + 입력 받을 경우
        if(a.equals("+")){
            // add메소드 호출
            System.out.println(add(num1,num2));
        } else if (a.equals("-")) { //아니고 a가 -라면
            System.out.println(sub(num1,num2));
        } else if (a.equals("*")){ //아니고 a가 *라면
            System.out.println(mul(num1,num2));
        } else if (a.equals("/")) { //아니고 a가 /라면
            System.out.println(div(num1,num2));
        }
    }
    /**
     * method name : add
     * parameter : int, int
     * return : int
     * description : 두 수를 더하여 리턴한다.
     */
    public static int add(int a, int b) {
        return a+b;
    }
    //빼기
    public static int sub(int a, int b) {
        return a-b;
    }
    public static int mul(int a, int b) {
        return a*b;
    }
    public static int div(int a, int b) {
        return a/b;
    }


}


