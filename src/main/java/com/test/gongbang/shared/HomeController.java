package com.test.gongbang.shared;

import com.test.gongbang.member.login.kakao.model.KakaoDAO;
import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.login.kakao.service.KakaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    private KakaoDAO dao;

    @GetMapping("/main")
    public String home() {
        return "main";
    }

    // 로그아웃, 탈퇴 test 페이지
    @GetMapping("/index")
    public String index(Model model, HttpSession session) {
        System.out.println((KakaoDTO) session.getAttribute("user"));
        return "index";
    }

}
