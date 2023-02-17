package com.test.gongbang.qna.controller;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.qna.service.QnaServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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
        System.out.println("ㅠㅠ");
        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        long aseq = kdto.getSeq();
        dto.setAseq(aseq);

        qnaService.insertQna(dto);
        System.out.println("qna 테스트: " + dto);
        return "redirect:/qna/list";
    }

    // Qna 게시글 상세 페이지
    @GetMapping("/content")
    public ModelAndView view(@RequestParam String seq, Model model, HttpSession session) throws Exception {
        QnaDTO dto = qnaService.read(seq);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("qna/content");
        mav.addObject("dto", qnaService.read(seq));
        model.addAttribute("read", dto);

        // 댓글 조회
        List<QnaDTO> comment = qnaService.comment(seq);
        model.addAttribute("comment", comment);

        return mav;
    }

    // Qna 댓글 작성
    @PostMapping("/content")
    public String insertComment(HttpServletRequest request, HttpSession session, Model model) throws Exception {
        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        long aseq = kdto.getSeq();

        String seq = request.getParameter("seq");

        QnaDTO dto = new QnaDTO();
        dto.setComment(request.getParameter("comment"));

        dto.setAseq(aseq);
        dto.setSeq(seq);

        qnaService.insertComment(dto);

        return "redirect:/qna/content?seq=" + seq;
    }

}
