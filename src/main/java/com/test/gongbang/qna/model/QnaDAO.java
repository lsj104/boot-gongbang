package com.test.gongbang.qna.model;

import com.test.gongbang.qna.service.QnaDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface QnaDAO {
    List<QnaDTO> selectQna();
    void insertQna(QnaDTO dto) throws Exception;
}
