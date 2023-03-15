package com.test.gongbang.feed.model;

import com.test.gongbang.feed.service.FeedCommentDTO;
import com.test.gongbang.feed.service.FeedDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
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

    @Override
    public FeedCommentDTO feedcomment(String seq) {
        return template.selectOne("feed.feedcomment", seq);
    }

    @Override
    public int feedAdd(FeedDTO dto) {
        return this.template.insert("feed.feedadd", dto);
    }

    @Override
    public String getBseq() {
        return this.template.selectOne("feed.getBseq");
    }

    @Override
    public boolean existHashTag(String tagName) {
        return this.template.selectOne("feed.existHashTag", tagName);
    }

    @Override
    public String getRHseq(String tagName) {
        return this.template.selectOne("feed.getRHseq", tagName);
    }

    @Override
    public void addHashTag(String tagName) {
        template.insert("feed.addHashTag", tagName);
    }

    @Override
    public String getHseq() {
        return this.template.selectOne("feed.getHseq");
    }

    @Override
    public void addTagging(HashMap<String, String> map) {
        template.insert("feed.addTagging", map);
    }
}
