package com.test.gongbang.member.service;

import lombok.Data;

@Data
public class MemberDTO {

    private String seq;
    private String name;
    private String nickname;
    private String tel;
    private String image;

    private String id;
    private String pw;
    private String lv;

    private String address;

    //클래스 예약
    private String rdate;
    private String rmembercnt;
    private String duedate;
    private String duetime;
    private String cseq; //예약 클래스 seq

}
