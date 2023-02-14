package com.test.gongbang.feed.model;

import com.test.gongbang.feed.service.FeedDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class FeedDAOImpl implements  FeedDAO{
    @Autowired
    SqlSessionTemplate template;
    @Override
    public List<FeedDTO> list() {

        return template.selectList("feed.list");
    }

    @Override
    public FeedDTO feedview(String seq) {
        return template.selectOne("feed.feedview" , seq);
    }
}
