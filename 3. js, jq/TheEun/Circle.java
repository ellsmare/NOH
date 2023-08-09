package TheEun;

public class Circle {

    private int radius;
    // 제약조건
    //정보은닉 :: 외부에서 정보를 다이렉트로 접근 못하도록함
    //캡슐화 :: 외부랑 통로는 있다. 통로가 메소드기반으로 됨 7,8,9,10장
    public void setRadius(int radius) {
        if (radius < 0) {
            radius=0;
        }
        // this 나 자신 :: Circle
        this.radius = radius;
    }
    public int getRadius(){
        return this.radius;
    }
}
