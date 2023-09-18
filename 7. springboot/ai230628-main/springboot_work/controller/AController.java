package com.example.demo.controller;

import com.example.demo.myClass.AA;
import com.example.demo.myClass.BB;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

// 주소 호출하면 응답하는 클래스
@RestController
public class AController {
    //초기화
    @Autowired
    AA cc;
    @Autowired
    AA dd;


    //BB클래스 객체 출력
    @Autowired
    BB bb1;

    @Autowired
    BB bb2;

    //Get :: 어떤 주소를 요청하면 어떤 결과가 나올지 확인가능
    @GetMapping("aa")
    public String aa(){
        AA aa= new AA();
        AA bb= new AA();
        System.out.println("AA 객체생성 : "+aa );
        System.out.println("AA 객체생성 : "+bb);

        System.out.println("aa.a = " + aa.a);
        System.out.println("bb.a = " + bb.a);

        aa.a=20;
        System.out.println("aa.a = " + aa.a);
        System.out.println("bb.a = " + bb.a);
        System.out.println("cc.a = " + cc.a);
        System.out.println("dd.a = " + dd.a);

        cc.a=40;
        System.out.println("cc.a = " + cc.a);
        System.out.println("dd.a = " + dd.a);

        System.out.println("AA 객체생성 : "+cc );
        System.out.println("AA 객체생성 : "+dd );

        return "hi welcome aaaaaa";
    }


    @GetMapping("bb")
    public String bb(){

        //BB클래스 객체 출력
        System.out.println("bb1.a = " + bb1.a);
        System.out.println("bb2.a = " + bb2.a);
        bb1.a = 7777;

        System.out.println("bb1.a = " + bb1.a);
        System.out.println("bb2.a = " + bb2.a);

        return "bbbbbbb return";

    }

}
