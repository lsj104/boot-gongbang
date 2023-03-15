package com.test.gongbang.feed.service;

import com.test.gongbang.feed.model.FeedDAO;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
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

    @Override
    public FeedCommentDTO feedcomment(String seq) {

        return dao.feedcomment(seq);
    }

    @Override
    public int feedAdd(MultipartHttpServletRequest mreq, String aseq) {

        FeedDTO dto = new FeedDTO();

        dto.setContent(mreq.getParameter("content"));
        dto.setAseq(aseq);

        MultipartFile file = mreq.getFile("image");
        String filename = file.getOriginalFilename();

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

        int result = dao.feedAdd(dto);

        String tag = mreq.getParameter("tag");

        if (tag != null && tag != "" && !tag.equals("[]")) {

            try {

                JSONParser parser = new JSONParser();

                JSONArray tlist = (JSONArray) parser.parse(tag);

                String bseq = dao.getBseq();
                HashMap<String, String> map = new HashMap<String, String>();

                for (Object obj : tlist) {

                    String tagName = (String) ((JSONObject) obj).get("value");

                    System.out.println(tagName);

                    // 해시태그 추가
                    String hseq = "";
                    if (dao.existHashTag(tagName)) {

                        hseq = dao.getRHseq(tagName); // 기존 태그 번호

                    } else {

                        dao.addHashTag(tagName); // 새로운 태그 추가

                        // 게시판 - 해시태그 연결 추가
                        hseq = dao.getHseq(); // 새로운 태그 번호

                    }
                    map.put("bseq", bseq);
                    map.put("hseq", hseq);

                    dao.addTagging(map); // 연결

                }

            } catch (Exception e) {
                System.out.println("AddOk.doPost");
                e.printStackTrace();
            }
        }
        return result;
    }

    //파일 처리
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
