// 패키지, inport, 어노테이션
// 어노테이션 :: 특수한 행위를 지원해줌, @골뱅이로 시작, DI개념 등등
package TheEun;
import lombok.Data;

@Data
public class Member {
    // 접근지시자가 없는 경우 private 설정됨
    // 이 코드에서는 private 사용가능, 내부이기 때문에

    //문자열 이름
    private String name;

    // 문자열 아이디
    private String id;

    // 문자열 비밀번호
    private String pwd;

    // 문자열 생년월일
    private String birthday;

    // 문자열 주소
    private String address;

    // 문자열 휴대폰전화번호
    private String tel;

    // 정수형 나이
    private int age;

    // 논리형 성별 t여성 f남성
    private boolean gender;

    //멤버변수 다 작성하고 나면 생성자 생성
    public Member() {

    }

    public Member(String name, String id) {
        this.name = name;
        this.id = id;
    }

    public Member(String name, String id, String pwd, String birthday, String address, String tel, int age, boolean gender) {
        this.name = name;
        this.id = id;
        this.pwd = pwd;
        this.birthday = birthday;
        this.address = address;
        this.tel = tel;
        this.age = age;
        this.gender = gender;
    }
}
