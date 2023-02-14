package com.test.gongbang.feed.service;

import java.util.List;

public interface FeedService {

    List<FeedDTO> list();


    FeedDTO feedview(String seq);
}
