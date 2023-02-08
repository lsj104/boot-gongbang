package com.test.gongbang.qna.controller;

import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.qna.service.QnaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/qna")

public class QnaController {

    @Autowired
    private final QnaServiceImpl qnaService;

    public QnaController(QnaServiceImpl qnaService) {
        this.qnaService = qnaService;
    }


    @GetMapping("/list")
    public String boardlist(Model model) {
        List<QnaDTO> selectQna = qnaService.selectQna();
        model.addAttribute("list", selectQna);
        return "/qna/qnalist";
    }
}
