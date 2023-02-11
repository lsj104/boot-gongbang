package com.test.gongbang.member.login.kakao.service;

import lombok.Data;

@Data
public class KakaoDTO {
    private long seq;
    private String id; // kakao - email
    private String nickname;
    private String image;
    private String lv;
    private String tel;
    private String name;
    private String active;
    private String address;
}
