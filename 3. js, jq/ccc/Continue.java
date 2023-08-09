package ccc;

public class Continue {
    public static void main(String[] args) {
        //0~9 반복
        //continu를 기준으로 아래코드 실행 안함 위로 올라감
        for(int i=1; i<10; i++){
            if(i==3){
                continue;
            }
            System.out.println(i);
        }

    }
}

