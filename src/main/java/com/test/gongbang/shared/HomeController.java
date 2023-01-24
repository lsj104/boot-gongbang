package com.test.gongbang.shared;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/main")
    public String home() {
        return "main";
    }

    // 로그아웃, 탈퇴 test 페이지
    @GetMapping("/index")
    public String index() {
        return "index";
    }


}
