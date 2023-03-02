package com.test.gongbang.shared;

import com.test.gongbang.admin.service.AdminService;
import com.test.gongbang.admin.service.NoticeDTO;
import com.test.gongbang.member.login.kakao.model.KakaoDAO;
import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.sclass.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private KakaoDAO dao;
    @Autowired
    private ClassService service;

    @Autowired
    private AdminService adminService;

    @GetMapping("/main")
    public String home(Model model) {

        List<ClassDTO> newClass = service.newClass();
        List<NoticeDTO> noticeViewList = adminService.getNoticeView();

        model.addAttribute("newClass", newClass);
        model.addAttribute("noticeViewList", noticeViewList);

        return "main";
    }

    // 로그아웃, 탈퇴 test 페이지
    @GetMapping("/index")
    public String index(Model model, HttpSession session) {
        System.out.println((KakaoDTO) session.getAttribute("user"));
        return "index";
    }

}
