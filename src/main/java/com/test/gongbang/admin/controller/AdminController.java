package com.test.gongbang.admin.controller;

import com.test.gongbang.admin.service.AdminDTO;
import com.test.gongbang.admin.service.AdminService;
import com.test.gongbang.admin.service.ChartDTO;
import com.test.gongbang.admin.service.NoticeDTO;
import com.test.gongbang.qna.service.QnaDTO;
import com.test.gongbang.qna.service.QnaService;
import com.test.gongbang.shared.service.Paging;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;


@Controller
public class AdminController {

    @Autowired private AdminService adminService;
    @Autowired private QnaService qnaService;

    @GetMapping("/admin/login")
    public String adminLogin() {

        return "admin/login";
    }

    @ResponseBody
    @PostMapping ("/admin/loginok")
    public int adminLoginOk(HttpServletRequest req, HttpSession session) {

        int result = adminService.loginOk(req.getParameter("id"), session);
        System.out.println("login" + result);

        return result;
    }

    @GetMapping ("/admin/logout")
    public String adminLogout(HttpSession session) {

        session.invalidate();
        System.out.println("로그아웃 완료");

        return "redirect:/main";
    }

    @GetMapping ("/admin/requestlogin")
    public void requestLogin(HttpServletResponse response) throws IOException {

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('관리자 계정으로 로그인 후 이용가능 합니다.'); location.href='http://localhost:8090/admin/login';</script>");

        out.flush();
    }

    @GetMapping ("/admin/adminpage")
    public String adminPage(Model model, HttpSession session) {

        if (session.getAttribute("user") == null) {
            return "redirect:/admin/requestlogin";
        }

        List<ChartDTO> accountCntList = adminService.getAccountCntList();
        List<ChartDTO> reservationCategoryList = adminService.getReservationCategoryList();
        List<ChartDTO> createClassCategoryList = adminService.getCreateClassCategoryList();
        JSONArray reservationCntList = adminService.getReservationCntList();
        JSONArray createclassList = adminService.getCreateClassList();

        model.addAttribute("accountList", accountCntList);
        model.addAttribute("reservationCategoryList",reservationCategoryList);
        model.addAttribute("createClassCategoryList",createClassCategoryList);
        model.addAttribute("reservationList",reservationCntList);
        model.addAttribute("createList",createclassList);

        return "admin/adminpage";
    }

    @GetMapping ("/admin/adminpage/notice")
    public String adminNotice(Model model, HttpServletRequest req, HttpSession session) {

        if (session.getAttribute("user") == null) {
            return "redirect:/admin/requestlogin";
        }

        int page = req.getParameter("page") == null ? 1 : Integer.parseInt(req.getParameter("page"));
        String searchType = req.getParameter("searchType");
        String searchWord = req.getParameter("searchWord");

        Paging paging = adminService.paging(page, searchType, searchWord);

        List<NoticeDTO> noticeList = adminService.getNoticeList(paging, searchType, searchWord);

        model.addAttribute("noticeList", noticeList);
        model.addAttribute("paging", paging);
        model.addAttribute("searchWord", searchWord);

        return "admin/adminnotice";
    }

    @ResponseBody
    @PostMapping ("/admin/adminpage/activeupdate")
    public int updateNoticeActive(HttpServletRequest req) {

        String seq = req.getParameter("seq");
        String active = req.getParameter("active");

        int result = adminService.updateActive(seq,active);

        return result;
    }

    @ResponseBody
    @PostMapping("/admin/adminpage/noticeadd")
    public int insertNotice(HttpServletRequest req, HttpSession session) {

        int result = adminService.insertNotice(req, session);

        return result;
    }

    @ResponseBody
    @PostMapping("/admin/adminpage/noticedel")
    public int deleteNotice(HttpServletRequest req) {

        int result = adminService.deleteNotice(req);

        return result;
    }

    @ResponseBody
    @PostMapping("/admin/adminpage/noticeupdate")
    public int updateNotice(HttpServletRequest req) {

        int result = adminService.updateNotice(req);

        return result;
    }

    @GetMapping("/admin/adminpage/adminqna")
    public String adminQnA(Model model, HttpSession session) {

        if (session.getAttribute("user") == null) {
            return "redirect:/admin/requestlogin";
        }

        List<QnaDTO> allQnAList = qnaService.selectQna();
        List<QnaDTO> requestCommentQnAList = adminService.getRequestCommentQnA();

        model.addAttribute("allQnAList",allQnAList);
        model.addAttribute("requestCommentQnAList",requestCommentQnAList);

        return "admin/adminqna";
    }

}
