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

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class FeedController {
    @Autowired private FeedService service;

    @GetMapping("feed/feed")
    public String list(Model model) {

        List<FeedDTO> list = service.list();

        model.addAttribute("list",list);

        return "feed/feed";
    }

    @GetMapping("feed/feedview")
    public String feedview(@RequestParam String seq , Model model, HttpSession session){

        FeedDTO dto = service.feedview(seq);

        model.addAttribute("feedview", dto);

        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        String aseq = kdto.getSeq() + "";

        model.addAttribute("aseq", aseq);

        FeedCommentDTO cdto = service.feedcomment(seq);

        model.addAttribute("feedcomment", cdto);


        return "feed/feedview";

    }


    //글쓰기
    @GetMapping("feed/insert")
    public String feedinsert(){

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
    public String feedupdate(@RequestParam String seq , Model model){



        return "feed/update";

    }

    @GetMapping("feed/delete")
    public String feeddelete(){



        return "feed/delete";

    }




}
