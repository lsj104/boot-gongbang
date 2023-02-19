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

    // Qna 전체 목록 조회
    @Override
    public List<QnaDTO> selectQna() {
        return qnaDAO.selectQna();
    }

    // Qna 작성
    @Override
    public void insertQna(QnaDTO dto) throws Exception {
        qnaDAO.insertQna(dto);
    }

    // Qna 상세 페이지
    @Override
    public QnaDTO read(String seq) throws Exception {
        return qnaDAO.read(seq);

    }

    // Qna 댓글 조회
    @Override
    public List<QnaDTO> comment(String seq) {
        return qnaDAO.comment(seq);
    }

    // Qna 댓글 작성
    @Override
    public void insertComment(QnaDTO dto) throws Exception {
        qnaDAO.insertComment(dto);
    }

    // Qna 글 삭제
    @Override
    public void deletePost(String seq) {
        qnaDAO.deletePost(seq);
    }

    // Qna 글 삭제 + 댓글
    @Override
    public void deletePostComment(String seq) {
        qnaDAO.deletePostComment(seq);
    }

    // Qna 글 수정
    @Override
    public void updatePost(QnaDTO dto) throws Exception {
        qnaDAO.updatePost(dto);
    }


}
