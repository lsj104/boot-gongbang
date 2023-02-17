package com.test.gongbang.shopboard.service;

import lombok.Data;

@Data
public class ShopBoardDTO {

    private String seq;             // 게시판 번호
    private String title;           // 제목
    private String content;         // 내용
    private String regdate;         // 등록일
    private String shopimage;       // 공방 이미지
    private String shopnickname;    // 공방 닉네임
    private String membernickname;  // 멤버 닉네임
    private String borderimage;     // 게시판 이미지
    private long aseq;              // 계정 시퀀스

}
