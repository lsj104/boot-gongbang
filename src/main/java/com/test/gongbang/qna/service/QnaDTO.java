package com.test.gongbang.qna.service;

import lombok.Data;

@Data
public class QnaDTO {
    private long seq;
    private String nickname;
    private String title;
    private String content;
    private String regdate;
}
