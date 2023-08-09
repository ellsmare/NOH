package mission_for;

public class Mission_for_1 {
    public static void main(String[] args) {
        //int형 변수 num1을 선언, 정수형 데이터 50 저장
        //int형 변수 num2을 선언
        //int형 변수 big을 선언
        //int형 변수 diff을 선언
        int num1 = 50;
        int num2 = 100;
        int big;
        int diff;

        //만약 num1>num2의 결과가 True -> num1을 big에 저장하고 프린트문 출력
        //만약 num1>num2의 결과가 False -> num2을 big에 저장하고 프린트문 출력
        big = (num1 > num2)? num1 : num2;
        System.out.println("큰수 : "+ big);
        //만약 num1>num2의 결과가 True -> num1-num2을 diff에 저장하고 프린트문 출력
        //만약 num1>num2의 결과가 False -> num2-num1을 diff에 저장하고 프린트문 출력
        diff = (num1 > num2)? num1 - num2 : num2 - num1;
        System.out.println("절대값 : "+diff);
        }
    }

