package com.test.gongbang.feed.model;

import com.test.gongbang.feed.service.FeedCommentDTO;
import com.test.gongbang.feed.service.FeedDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.HashMap;

import java.util.ArrayList;

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
    public List<FeedCommentDTO> feedcomment(String seq) {
        return template.selectList("feed.feedcomment", seq);
    }

    @Override
    public int feeddel(String seq) {
        return template.delete("feed.feeddel", seq);
    }


    @Override
    public int feedupdate(FeedDTO dto) {
        return template.update("feed.feedupdate", dto);
    }

    @Override
    public List<FeedDTO> feedprofile(String aseq) {
        return template.selectList("feed.feedprofile",aseq);
    }

    @Override
    public FeedDTO feedmember(String aseq) {
        return template.selectOne("feed.feedmember",aseq);
    }

    @Override
    public List<String> hlist(String seq) {

        return template.selectList("feed.hashtag", seq);
    }

    @Override
    public int commentadd(FeedCommentDTO commentDTO) {

        return template.insert("feed.commentadd", commentDTO);
    }

    @Override
    public int commentdel(String seq) {

        return template.delete("feed.commentdel", seq);
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
