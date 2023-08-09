package ccc;

public class Method_2 {
    public static void main(String[] args) {
        System.out.println(add(5,4));

        int sum = add(7,10);
        System.out.println(sum*10);

        System.out.println(add(5,4,3));
    }

    public static int add(int num1, int num2) {
        int result=num1+num2;
        return result;
    }

    public static int add(int num1, int num2, int num3) {
        return num1 + num2 + num3;
    }
}
