package com.test.gongbang.feed.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface FeedService {

    List<FeedDTO> list();


    FeedDTO feedview(String seq);


    List<FeedCommentDTO> feedcomment(String seq);


    int feeddel(String seq);

    int feedupdate(MultipartHttpServletRequest mreq, HttpSession session);

    List<FeedDTO> feedprofile(String aseq);

    FeedDTO feedmember(String aseq);
}


