package com.test.gongbang.feed.model;

import com.test.gongbang.feed.service.FeedCommentDTO;
import com.test.gongbang.feed.service.FeedDTO;


import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;

public interface FeedDAO {
    List<FeedDTO> list();

    FeedDTO feedview(String seq);

   
    int feedAdd(FeedDTO dto);

    String getBseq();

    boolean existHashTag(String tagName);

    String getRHseq(String tagName);

    void addHashTag(String tagName);

    String getHseq();

    void addTagging(HashMap<String, String> map);

    List<FeedCommentDTO> feedcomment(String seq);

    int feeddel(String seq);

    int feedupdate(FeedDTO dto);

    List<FeedDTO> feedprofile(String aseq);

    FeedDTO feedmember(String aseq);

    List<String> hlist(String seq);

    int commentadd(FeedCommentDTO commentDTO);

    int commentdel(String seq);

}
