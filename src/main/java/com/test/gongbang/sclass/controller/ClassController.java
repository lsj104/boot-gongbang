package com.test.gongbang.sclass.controller;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.sclass.service.CategoryDTO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.scheduling.support.SimpleTriggerContext;
import org.springframework.stereotype.Controller;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.sclass.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
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
public class ClassController {
    @Autowired private ClassService service;

    @GetMapping("/class")
    public String list(Model model, HttpSession session, @RequestParam(value = "page", required = false, defaultValue = "1") String page, @RequestParam(value = "searchType", required = false) String searchType, @RequestParam(value = "searchWord", required = false) String searchWord) {

        Paging paging = service.paging(Integer.parseInt(page), searchType, searchWord);

        List<ClassDTO> list = service.list(paging, searchType, searchWord);

        List<CategoryDTO> category = service.getCategory();

        model.addAttribute("list", list);
        model.addAttribute("paging", paging);
        model.addAttribute("category", category);
        model.addAttribute("searchWord", searchWord);

        return "class/class";
    }

    @GetMapping ("/class/classviewdetails")
    public String view(Model model, @RequestParam String seq, HttpSession session) {

        ClassDTO dto = service.getClass(seq);
        ShopDTO sdto = service.getShop(seq);

        model.addAttribute("dto", dto);
        model.addAttribute("sdto", sdto);

        return "class/classviewdetails";
    }

    @PostMapping ("/class/classreservation")
    public String reservation(String seq, Model model, HttpSession session) {

        ClassDTO dto = service.getClass(seq);
        ShopDTO sdto = service.getShop(seq);

        model.addAttribute("dto", dto);
        model.addAttribute("sdto", sdto);

        return "class/classreservation";
    }

    @PostMapping ("/class/classreservationOk")
    public String reservationOk(String cseq, String rmembercnt, HttpSession session, HttpServletResponse response) throws IOException {

        int result = service.reservation(cseq, rmembercnt, session);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (result != 1) {
            out.println("<script>alert('예약을 실패하였습니다. 다시 시도해주세요.'); history.back();</script>");
        } else {
            out.println("<script>alert('예약이 완료되었습니다.');</script>");
        }

        out.flush();

       return "redirect:/class";
    }

    @PostMapping("/class/classadd")
    public String add(Model model, HttpSession session) {

        String sseq = service.getShopSeq(session);
        List<CategoryDTO> category = service.getCategory();

        model.addAttribute("sseq", sseq);
        model.addAttribute("category",category);

        return "class/classadd";
    }

    @PostMapping("/class/classaddok")
    public String addOk(HttpSession session, MultipartHttpServletRequest multiReq, HttpServletResponse response) throws IOException {

        int result = service.addClass(multiReq);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (result != 1) {
            out.println("<script>alert('예약을 실패하였습니다. 다시 시도해주세요.'); history.back();</script>");
        } else {
            out.println("<script>alert('예약이 완료되었습니다.');");
        }

        out.flush();

        return "redirect:/class";

    }

}
