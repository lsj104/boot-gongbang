package com.test.gongbang.qna.service;

import java.util.List;

public interface QnaService {
    List<QnaDTO> selectQna();

    void insertQna(QnaDTO dto) throws Exception;

}
