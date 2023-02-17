package com.test.gongbang.qna.model;

import com.test.gongbang.qna.service.QnaDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface QnaDAO {

    // Qna 전체 목록 조회
    List<QnaDTO> selectQna();

    // Qna 글 작성
    void insertQna(QnaDTO dto) throws Exception;

    // Qna 글 상세페이지
    QnaDTO read(String seq) throws Exception;

    // Qna 댓글
    List<QnaDTO> comment(String seq);

    // Qna 댓글 작성
    void insertComment(QnaDTO dto) throws Exception;

}
