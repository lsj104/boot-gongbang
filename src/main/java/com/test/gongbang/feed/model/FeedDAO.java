package com.test.gongbang.feed.model;

import com.test.gongbang.feed.service.FeedDTO;

import java.util.List;

public interface FeedDAO {
    List<FeedDTO> list();

    FeedDTO feedview(String seq);
}
