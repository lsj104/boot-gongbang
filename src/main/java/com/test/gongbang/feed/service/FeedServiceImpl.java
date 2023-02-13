package com.test.gongbang.feed.service;

import com.test.gongbang.feed.model.FeedDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedServiceImpl implements FeedService{
    @Autowired private FeedDAO dao;

    @Override
    public List<FeedDTO> list() {

        List<FeedDTO> list = dao.list();
        return list;
    }

    @Override
    public FeedDTO feedview(String seq) {

        FeedDTO dto = dao.feedview(seq);

        return dto;
    }


}
