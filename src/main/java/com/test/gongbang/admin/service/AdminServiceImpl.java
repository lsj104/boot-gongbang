package com.test.gongbang.admin.service;

import com.test.gongbang.admin.model.AdminDAO;
import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.shared.service.Paging;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDAO dao;

    @Override
    public int loginOk(String id, HttpSession session) {

        List<AdminDTO> dto = dao.loginOk(id);
        int result = dto.size();

        if (result == 1) {

            AdminDTO adto = dto.get(0);

            //session.user에 admin dto 담기
            session.setAttribute("user", adto);

            System.out.println(session.getAttribute("user"));

        }

        return result;
    }

    @Override
    public List<ChartDTO> getAccountCntList() {
        return dao.getAccountCntList();
    }

    @Override
    public JSONArray getReservationCntList() {

        List<ChartDTO> list = dao.getReservationCntList();

        JSONArray arr = new JSONArray();

        for (ChartDTO dto : list) {

            JSONObject data = new JSONObject();

            data.put("rdate", dto.getRdate());
            data.put("cnt", dto.getReservationcnt());
            arr.add(data);
        }
        return arr;

    }

    @Override
    public JSONArray getCreateClassList() {

        List<ChartDTO> list = dao.getCreateClassList();

        JSONArray arr = new JSONArray();

        for (ChartDTO dto : list) {

            JSONObject data = new JSONObject();

            data.put("duedate", dto.getDuedate());
            data.put("cnt", dto.getCreatecnt());
            arr.add(data);
        }
        return arr;
    }

    @Override
    public List<ChartDTO> getReservationCategoryList() {
        return dao.getReservationCategoryList();
    }

    @Override
    public List<ChartDTO> getCreateClassCategoryList() {
        return dao.getCreateClassCategoryList();
    }

    @Override
    public List<NoticeDTO> getNoticeList(Paging paging, String searchType, String searchWord) {

        List<NoticeDTO> list = Collections.emptyList();

        HashMap<String,Object> map = new HashMap<>();
        map.put("startRow", paging.getStartRow());
        map.put("endRow", paging.getEndRow());

        if (searchType == null || searchWord == null) {
            list = dao.allList(map);
        } else {
            map.put("searchType", searchType);
            map.put("searchWord", searchWord);

            list = dao.searchList(map);
        }

        return list;
    }

    @Override
    public Paging paging(int page, String searchType, String searchWord) {

        String url = "";
        int totalCount = 0;

        url = "/admin/adminpage/notice";

        if (searchType == null || searchWord == null) {
            totalCount = dao.getTotalCount();
        } else {
            HashMap<String, String> searchMap = new HashMap<>();
            searchMap.put("searchType", searchType);
            searchMap.put("searchWord", searchWord);

            totalCount = dao.getSearchTotalCount(searchMap);
        }

        Paging paging = new Paging(page, 9, 10, totalCount);
        paging.pageBarMaker(paging, searchType, searchWord, url);

        return paging;
    }

    @Override
    public int updateActive(String seq, String active) {

        NoticeDTO dto = dao.getNotice(seq);
        HashMap<String,String> map = new HashMap<>();

        int result = 0;

        if(!dto.getActive().equals(active)) {
            map.put("seq",seq);
            map.put("active",active);

            result = dao.updateActive(map);
        }

        return result;
    }

    @Override
    public int insertNotice(HttpServletRequest req, HttpSession session) {

        String aseq = ((AdminDTO) session.getAttribute("user")).getSeq() + "";
        NoticeDTO dto = new NoticeDTO();

        dto.setAseq(aseq);
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));

        int result = dao.insertNotice(dto);

        return result;
    }

    @Override
    public int deleteNotice(HttpServletRequest req) {

        int result = dao.deleteNotice(req.getParameter("seq"));

        return result;
    }

    @Override
    public int updateNotice(HttpServletRequest req) {

        String seq = req.getParameter("seq");
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        System.out.println("update" + seq + title + content);

        int result = 0;

        NoticeDTO dto = dao.getNotice(seq);

        if (!dto.getTitle().equals(title) || !dto.getContent().equals(content)) {

            HashMap<String, Object> map = new HashMap<>();
            map.put("seq", seq);
            map.put("title", title);
            map.put("content",content);

            result = dao.updateNotice(map);
        }
        if (dto.getTitle().equals(title) && dto.getContent().equals(content)) {
            result = 2;
        }

        System.out.println(result);

        return result;
    }

    @Override
    public List<QnaDTO> getRequestCommentQnA() {
        return dao.getRequestCommentQnA();
    }

    @Override
    public List<NoticeDTO> getNoticeShow() {

        List<NoticeDTO> noticeShowList = dao.getNoticeShow();

        for (int i=0; i < noticeShowList.toArray().length; i++) {

            noticeShowList.get(i).setContent(noticeShowList.get(i).getContent().replace("\n", "<br/>"));
            noticeShowList.get(i).setRegdate(noticeShowList.get(i).getRegdate().substring(0,10));
        }

        return noticeShowList;
    }
}
