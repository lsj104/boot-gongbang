package com.test.gongbang.sclass.service;

import lombok.Data;

@Data
public class ClassDTO {
    private String seq;         //번호
    private String cseq;        //카테고리 번호
    private String name;        //클래스 이름
    private String intro;       //클래스 소개
    private String course;      //클래스 커리큘럼
    private String time;        //소요시간
    private String duedate;     //클래스 수강일
    private String duetime;     //클래스 수강시각
    private String membercnt;   //클래스 총 모집인원
    private String price;       //클래스 수강 가격
    private String image;       //클래스 이미지
    private String sseq;        //공방 번호
    private String rmembercnt;  //예약자수

    //Shop 정보
    private String nickname;    //공방명
    private String address;    //공방위치
}
