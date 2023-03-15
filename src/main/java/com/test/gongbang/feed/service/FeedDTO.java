package com.test.gongbang.feed.service;

import lombok.Data;

import java.util.ArrayList;

import java.util.List;


@Data
public class FeedDTO {

    private String seq;
    private String content;
    private String regdate;
    private String image;
    private String aseq;


    private ArrayList<String> tag;

    private String nickname;
    private String pimage;
    private String likes;
    private List<String> hashtag;

}
