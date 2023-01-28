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

    //클래스 예약
    private String rdate;
    private String rmembercnt;

}
