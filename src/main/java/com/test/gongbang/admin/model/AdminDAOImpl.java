package com.test.gongbang.admin.model;

import com.test.gongbang.admin.service.AdminDTO;
import com.test.gongbang.admin.service.ChartDTO;
import com.test.gongbang.admin.service.NoticeDTO;
import com.test.gongbang.qna.service.QnaDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class AdminDAOImpl implements AdminDAO {

    @Autowired
    SqlSessionTemplate template;

    @Override
    public List<AdminDTO> loginOk(String id) {
        return template.selectList("admin.login", id);
    }

    @Override
    public List<ChartDTO> getAccountCntList() {
        return template.selectList("admin.accountCnt");
    }

    @Override
    public List<ChartDTO> getReservationCntList() {
        return template.selectList("admin.reservationCnt");
    }

    @Override
    public List<ChartDTO> getCreateClassList() {
        return template.selectList("admin.createClassCnt");
    }

    @Override
    public List<ChartDTO> getReservationCategoryList() { return template.selectList("admin.reservationByCategory"); }

    @Override
    public List<ChartDTO> getCreateClassCategoryList() {
        return template.selectList("admin.createByCategory");
    }

    @Override
    public List<NoticeDTO> allList(HashMap<String, Object> map) { return template.selectList("admin.allList", map); }

    @Override
    public List<NoticeDTO> searchList(HashMap<String, Object> map) {

        if (map.isEmpty()) {
            return template.selectList("admin.allList", map);
        } else {
            if(map.get("searchType").equals("all")) return template.selectList("admin.searchAll", map);
            else if (map.get("searchType").equals("title")) return template.selectList("admin.searchTitle", map);
            else if (map.get("searchType").equals("content")) return template.selectList("admin.searchContent", map);
            else if (map.get("searchType").equals("id")) return template.selectList("admin.searchWriter", map);
            else return template.selectList("admin.allList", map);
        }
    }

    @Override
    public int getTotalCount() {
        return template.selectOne("admin.noticeTotalCount");
    }

    @Override
    public int getSearchTotalCount(HashMap<String, String> searchMap) {
        if (searchMap.get("searchType").equals("all")) return template.selectOne("admin.searchAllCount", searchMap);
        else if (searchMap.get("searchType").equals("title")) return template.selectOne("admin.searchTitleCount", searchMap);
        else if (searchMap.get("searchType").equals("content")) return template.selectOne("admin.searchContentCount", searchMap);
        else if (searchMap.get("searchType").equals("id")) return template.selectOne("admin.searchWriterCount", searchMap);
        else return template.selectOne("admin.noticeTotalCount");
    }

    @Override
    public NoticeDTO getNotice(String seq) { return template.selectOne("admin.getNotice", seq);}

    @Override
    public int updateActive(HashMap<String, String> map) {
        return template.update("admin.updateActive", map);
    }

    @Override
    public int insertNotice(NoticeDTO dto) {
        return template.insert("admin.insertNotice", dto);
    }

    @Override
    public int deleteNotice(String seq) {
        return template.delete("admin.deleteNotice",seq);
    }

    @Override
    public int updateNotice(HashMap<String, Object> map) {
        return template.update("admin.updateNotice", map);
    }

    @Override
    public List<QnaDTO> getRequestCommentQnA() {
        return template.selectList("admin.requestCommentQnA");
    }

    @Override
    public List<NoticeDTO> getNoticeView() {
        return template.selectList("admin.noticeViewList");
    }

}
