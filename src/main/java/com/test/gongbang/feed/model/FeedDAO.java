package com.test.gongbang.feed.model;

import com.test.gongbang.feed.service.FeedCommentDTO;
import com.test.gongbang.feed.service.FeedDTO;

import java.util.List;

public interface FeedDAO {
    List<FeedDTO> list();

    FeedDTO feedview(String seq);

    List<FeedCommentDTO> feedcomment(String seq);

    int feeddel(String seq);

    List<FeedDTO> hashtag(String seq);

    int feedupdate(FeedDTO dto);

    List<FeedDTO> feedprofile(String aseq);
}
