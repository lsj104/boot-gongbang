package com.test.gongbang.qna.controller;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.qna.service.QnaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/qna")
public class QnaController {

    @Autowired
    private final QnaServiceImpl qnaService;

    public QnaController(QnaServiceImpl qnaService) {
        this.qnaService = qnaService;
    }

    // Qna 전체 목록 조회
    @GetMapping("/list")
    public String boardlist(Model model) {
        List<QnaDTO> selectQna = qnaService.selectQna();
        model.addAttribute("list", selectQna);
        return "/qna/qnalist";
    }

    // Qna 글쓰기
    @GetMapping("/insertqna")
    public String openQnaWrite(HttpSession session, Model model, HttpServletResponse response) throws Exception {
        if (session.getAttribute("user") == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 후 이용해 주세요.'); location.href='/qna/list'</script>");
            out.flush();
        }
        return "/qna/insertqna";
    }

    // Qna 글쓰기
    @PostMapping("/insertqna")
    public String insertQna(@ModelAttribute QnaDTO dto, HttpSession session, Model model) throws Exception {
        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        long aseq = kdto.getSeq();
        dto.setAseq(aseq);

        qnaService.insertQna(dto);
        System.out.println("qna 테스트: " + dto);
        return "redirect:/qna/list";
    }

    // Qna 게시글 상세 페이지
    @GetMapping("/content")
    public String content(@ModelAttribute QnaDTO dto, HttpSession session, Model model) {
        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        long aseq = kdto.getSeq();
        dto.setAseq(aseq);
        model.addAttribute("aseq", aseq);

        return "/qna/content";
    }
}
