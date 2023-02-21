package com.test.gongbang.shop.service;

import lombok.Data;

@Data
public class ShopDTO {
    private String seq;         //공방번호
    private String name;        //대표자명
    private String nickname;    //공방이름
    private String tel;         //연락처
    private String address;    //위치
    private String image;
    private String aseq;        //계정번호


    private String cname;
    private String intro;
    private String course;
    private String time;
    private String dudate;
    private String membercnt;
    private String price;
    private String cimage;
    private String category;
}

