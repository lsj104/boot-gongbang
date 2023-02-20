package com.test.gongbang.feed.service;

import com.test.gongbang.feed.model.FeedDAO;
import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.service.MemberDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
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

        List<String> hlist = dao.hlist(seq);

        dto.setHashtag(hlist);

        return dto;
    }

    @Override
    public List<FeedCommentDTO> feedcomment(String seq) {

        return dao.feedcomment(seq);
    }

    @Override
    public int feeddel(String seq) {
        return dao.feeddel(seq);
    }

    @Override
    public int feedupdate(MultipartHttpServletRequest mreq, HttpSession session) {

        FeedDTO dto = new FeedDTO();

        dto.setSeq(mreq.getParameter("seq"));
        dto.setContent(mreq.getParameter("content"));
        /*dto.setHashtag(mreq.getParameter("hashtag");*/

        System.out.print(dto);


        MultipartFile file = mreq.getFile("image");
        String filename = file.getOriginalFilename();

        //String path = mreq.getRealPath("/static/image");
        String path = "C:\\class\\code\\springboot\\feed";

        System.out.println(path);

        if (!file.isEmpty()) {
            String file1 = getFileName(path, filename);

            try {
                file.transferTo(new File(path + "\\" + file1));
            } catch (Exception e) {
                e.printStackTrace();
            }
            dto.setImage(file1);
        }

    int result = dao.feedupdate(dto);

        return result;
}

    @Override
    public List<FeedDTO> feedprofile(String aseq) {
        return dao.feedprofile(aseq);
    }

    @Override
    public FeedDTO feedmember(String aseq) {

        FeedDTO feedmember = dao.feedmember(aseq);

        return feedmember;
    }

    private String getFileName(String path, String filename) {
        int n = 1;
        int index = filename.lastIndexOf(".");

        String tempName = filename.substring(0, index);
        String tempExt = filename.substring(index);

        while (true) {

            File file = new File(path + "\\" + filename);

            if (file.exists()) {

                filename = String.format("%s_%d%s", tempName, n, tempExt);
                n++;
            } else {
                return filename;
            }
        }
    }


}
