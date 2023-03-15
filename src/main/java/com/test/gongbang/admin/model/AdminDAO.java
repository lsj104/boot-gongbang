package com.test.gongbang.admin.model;

import com.test.gongbang.admin.service.AdminDTO;
import com.test.gongbang.admin.service.ChartDTO;
import com.test.gongbang.admin.service.NoticeDTO;
import com.test.gongbang.qna.service.QnaDTO;

import java.util.HashMap;
import java.util.List;

public interface AdminDAO {
    List<AdminDTO> loginOk(String id);

    List<ChartDTO> getAccountCntList();

    List<ChartDTO> getReservationCntList();

    List<ChartDTO> getCreateClassList();

    List<ChartDTO> getReservationCategoryList();

    List<ChartDTO> getCreateClassCategoryList();

    NoticeDTO getNotice(String seq);

    List<NoticeDTO> allList(HashMap<String, Object> map);

    List<NoticeDTO> searchList(HashMap<String, Object> map);

    int updateActive(HashMap<String, String> map);

    int getTotalCount();

    int getSearchTotalCount(HashMap<String, String> searchMap);

    int insertNotice(NoticeDTO dto);

    int deleteNotice(String seq);

    int updateNotice(HashMap<String, Object> map);

    List<QnaDTO> getRequestCommentQnA();

    List<NoticeDTO> getNoticeView();
}
