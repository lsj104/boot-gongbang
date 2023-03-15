package com.test.gongbang.feed.service;

import lombok.Data;

import java.util.ArrayList;

@Data
public class FeedDTO {

    private String seq;
    private String content;
    private String regdate;
    private String image;
    private String aseq;

    private ArrayList<String> tag;
}
