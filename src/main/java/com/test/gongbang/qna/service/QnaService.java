package com.test.gongbang.qna.service;

import java.util.List;

public interface QnaService {
    List<QnaDTO> selectQna();

    void insertQna(QnaDTO dto) throws Exception;

    QnaDTO read(String seq) throws Exception;

    List<QnaDTO> comment(String seq);

    void insertComment(QnaDTO dto) throws Exception;
}
