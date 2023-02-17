package com.test.gongbang.qna.service;

import lombok.Data;

@Data
public class QnaDTO {
    private String seq;
    private String nickname;
    private String title;
    private String content;
    private String regdate;
    private long aseq; // account seq
    private String comment; // 댓글
    private String image;
}
