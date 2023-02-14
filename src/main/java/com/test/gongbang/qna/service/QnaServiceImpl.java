package com.test.gongbang.qna.service;

import com.test.gongbang.qna.model.QnaDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QnaServiceImpl implements QnaService {

    @Autowired
    private final QnaDAO qnaDAO;

    public QnaServiceImpl(QnaDAO qnaDAO) {
        this.qnaDAO = qnaDAO;
    }

    @Override
    public List<QnaDTO> selectQna() {
        return qnaDAO.selectQna();
    }
}
