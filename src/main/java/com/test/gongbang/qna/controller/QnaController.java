package com.test.gongbang.qna.controller;

import com.test.gongbang.admin.service.AdminDTO;
import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.qna.service.QnaServiceImpl;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
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

@Api(tags = "Qna 게시판")
@Controller
@RequestMapping("/qna")
public class QnaController {

    @Autowired
    private final QnaServiceImpl qnaService;

    public QnaController(QnaServiceImpl qnaService) {
        this.qnaService = qnaService;
    }

    @ApiOperation(value = "qna 전체 목록 조회")
    @GetMapping("/list")
    public String boardlist(Model model) {
        List<QnaDTO> selectQna = qnaService.selectQna();
        model.addAttribute("list", selectQna);
        return "/qna/qnalist";
    }

    @ApiOperation(value = "qna 글쓰기 페이지")
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

    @ApiOperation(value = "qna 글쓰기")
    @PostMapping("/insertqna")
    public String insertQna(@ModelAttribute QnaDTO dto, HttpSession session, Model model) throws Exception {

        long aseq = 0;

        if (session.getAttribute("user").getClass() == AdminDTO.class) {
            aseq=1;
        } else {
            KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
            aseq = kdto.getSeq();
        }
        dto.setAseq(aseq);

        qnaService.insertQna(dto);
        System.out.println("qna 테스트: " + dto);
        return "redirect:/qna/list";
    }

    @ApiOperation(value = "qna 게시글 상세 페이지")
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

    @ApiOperation(value = "qna 댓글 작성")
    @PostMapping("/content")
    public String insertComment(HttpServletRequest request, HttpSession session, Model model) throws Exception {

        long aseq = 0;

        if (session.getAttribute("user").getClass() == AdminDTO.class) {
            aseq=1;
        } else {
            KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
            aseq = kdto.getSeq();
        }

        String seq = request.getParameter("seq");
        String cseq = request.getParameter("cseq");

        QnaDTO dto = new QnaDTO();

        dto.setComment(request.getParameter("comment"));

        dto.setAseq(aseq);
        dto.setSeq(seq);
        dto.setCseq(cseq);

        qnaService.insertComment(dto);

        return "redirect:/qna/content?seq=" + seq;
    }

    @ApiOperation(value = "qna 글 삭제")
    @GetMapping("/delete")
    public String deletePost(String seq, Model model) {


        qnaService.deletePostComment(seq);
        qnaService.deletePost(seq);

        return "redirect:/qna/list";
    }

    @ApiOperation(value = "qna 글 수정 페이지")
    @GetMapping("/updatepage")
    public ModelAndView updateview(@RequestParam String seq, Model model, HttpSession session) throws Exception {
        QnaDTO dto = qnaService.read(seq);
        ModelAndView mav = new ModelAndView();
        mav.setViewName("qna/updateqna");
        mav.addObject("dto", qnaService.read(seq));
        model.addAttribute("read", dto);

        return mav;
    }

    @ApiOperation(value = "qna 글 수정")
    @PostMapping("/updatepage")
    public String update(@ModelAttribute QnaDTO dto, HttpSession session, HttpServletRequest request, Model model) throws Exception {
        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        long aseq = kdto.getSeq();
        dto.setAseq(aseq);

        qnaService.updatePost(dto);
        String seq = request.getParameter("seq");

        dto.setSeq(seq);
        System.out.println("qna 수정: " + dto);
        return "redirect:/qna/content?seq=" + seq;

    }

    @ApiOperation(value = "qna 댓글 삭제")
    @GetMapping("/deletecomment")
    public String deleteComment(String cseq, HttpServletRequest request) {

        qnaService.deleteComment(cseq);
        String referer = request.getHeader("Referer"); // 헤더에서 이전 페이지를 읽음
        return "redirect:" + referer; // 이전 페이지로 리다이렉트

    }

}
