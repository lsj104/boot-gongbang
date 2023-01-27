package com.test.gongbang.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/qna")

public class QnaController {
    @GetMapping("list")
    public String boardlist() {
        return "/qna/qnalist";
    }
}
