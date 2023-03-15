package com.test.gongbang.feed.controller;

import com.test.gongbang.feed.service.FeedCommentDTO;
import com.test.gongbang.feed.service.FeedDTO;
import com.test.gongbang.feed.service.FeedService;
import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;


import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class FeedController {
    @Autowired
    private FeedService service;

    @GetMapping("feed/feed")
    public String list(Model model, HttpSession session, HttpServletResponse response) throws IOException {

        if (session.getAttribute("user") == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 후 이용해 주세요.'); location.href='/member/login'</script>");
            out.flush();
        }

        List<FeedDTO> list = service.list();

        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        String aseq = kdto.getSeq() + "";

        model.addAttribute("list", list);
        model.addAttribute("aseq", aseq);

        return "feed/feed";
    }

    @GetMapping("feed/feedview")
    public String feedview(@RequestParam String seq, Model model, HttpSession session) {

        FeedDTO dto = service.feedview(seq);

        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        String aseq = kdto.getSeq() + "";

        List<FeedCommentDTO> clist = service.feedcomment(seq);


        model.addAttribute("feedview", dto);
        model.addAttribute("aseq", aseq);

        model.addAttribute("feedcomment", clist);


        return "feed/feedview";

    }


    //글쓰기
    @GetMapping("feed/insert")
    public String feedinsert() {

        return "feed/insert";

    }


    //글쓰기 처리
    @PostMapping("feed/add")
    public void add(MultipartHttpServletRequest mreq, HttpSession session, HttpServletResponse response) throws IOException {

        KakaoDTO dto = (KakaoDTO) session.getAttribute("user");
        String aseq = dto.getSeq() + "";

        int result = service.feedAdd(mreq, aseq);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();


        if (result == 1) {
            out.println("<script>alert('등록되었습니다.'); location.href='/feed/feed'</script>");
        } else {
            out.println("<script>alert('다시 시도해주세요.'); location.href='/feed/insert'</script>");
        }
        out.flush();
    }

    @GetMapping("feed/update")
    public String feedupdate(@RequestParam String seq, Model model) {

        FeedDTO dto = service.feedview(seq);

        model.addAttribute("feedview", dto);

        return "feed/update";

    }

    @PostMapping("feed/updateok")
    public String feedupdateok(MultipartHttpServletRequest mreq, HttpSession session) {

        int result = service.feedupdate(mreq, session);

        if (result == 1) {
            return "redirect:/feed/feedview?seq=" + mreq.getParameter("seq");
        } else {
            return "feed/feed";
        }
    }

    @GetMapping("feed/delete")
    public String feeddelete(@RequestParam String seq) {

        int feeddel = service.feeddel(seq);

        return "redirect:/feed/feed";

    }

    @GetMapping("feed/profile")
    public String feedprofile(@RequestParam String aseq, Model model) {

        List<FeedDTO> dto = service.feedprofile(aseq);

        FeedDTO mdto = service.feedmember(aseq);

        model.addAttribute("feedprofile", dto);

        model.addAttribute("feedmember", mdto);

        return "feed/profile";

    }

    @PostMapping("feed/commentaddok")
    public String commentaddeok(HttpServletRequest req) {

        int commentaddresult = service.commentadd(req);

        System.out.print("시스데이트");

        return "redirect:/feed/feedview?seq=" + req.getParameter("feedseq");

    }


    @GetMapping("feed/commentdel")
    public String commentdel(@RequestParam String seq, @RequestParam String fseq) {

        int commentdel = service.commentdel(seq);

        return "redirect:/feed/feedview?seq=" + fseq;

    }


}
