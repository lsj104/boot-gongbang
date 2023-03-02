package com.test.gongbang.admin.service;

import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.shared.service.Paging;
import org.json.simple.JSONArray;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface AdminService {

    int loginOk(String id, HttpSession session);

    List<ChartDTO> getAccountCntList();

    JSONArray getReservationCntList();

    JSONArray getCreateClassList();

    List<ChartDTO> getReservationCategoryList();

    List<ChartDTO> getCreateClassCategoryList();

    List<NoticeDTO> getNoticeList(Paging paging, String searchType, String searchWord);

    int updateActive(String seq, String active);

    Paging paging(int parseInt, String searchType, String searchWord);

    int insertNotice(HttpServletRequest req, HttpSession session);

    int deleteNotice(HttpServletRequest req);

    int updateNotice(HttpServletRequest req);

    List<QnaDTO> getRequestCommentQnA();

    List<NoticeDTO> getNoticeView();
}
