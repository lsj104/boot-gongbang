package com.test.gongbang.feed.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;

public interface FeedService {

    List<FeedDTO> list();


    FeedDTO feedview(String seq);


    FeedCommentDTO feedcomment(String seq);

    int feedAdd(MultipartHttpServletRequest mreq, String aseq);
}


