package com.test.gongbang.member.login.kakao.controller;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.login.kakao.service.KakaoService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class KaKaoController {

    @Autowired
    KakaoService ks;

    KakaoDTO dto = new KakaoDTO();

    @GetMapping("/login")
    public String loginPage() {
//        return "member/login";
        return "member/login/myaccount";
    }


    @GetMapping("/kakao")
    public String getCI(@RequestParam String code, Model model, HttpSession session) throws IOException {
        System.out.println("code = " + code);
        String access_token = ks.getToken(code);
        KakaoDTO userInfo = ks.getuserinfo(access_token);
        model.addAttribute("code", code);
        model.addAttribute("access_token", access_token);
        model.addAttribute("userInfo", userInfo);

        session.setAttribute("access_token", access_token);
        session.setAttribute("user", userInfo);


//        return "index"; // 받아온 값 test page
        return "redirect:/main";


//        if (dto.getTel() == null) {
//            return "kakaoinfo";
//        } else {
//            return "main";
//        }

    }

    // 공방
    @GetMapping("/gongbang")
    public String getGbCI(@RequestParam String code, Model model, HttpSession session) throws IOException {
        System.out.println("code = " + code);
        String access_token = ks.getGongbangToken(code);
        KakaoDTO userInfo = ks.getgongbanginfo(access_token);
        model.addAttribute("code", code);
        model.addAttribute("access_token", access_token);
        model.addAttribute("userInfo", userInfo);

        session.setAttribute("access_token", access_token);
        session.setAttribute("user", userInfo);

//        return "index"; // 받아온 값 test page
        return "redirect:/main";


        // 전화번호 null일때 번호 입력 페이지
//        if (dto.getTel() == null) {
//            return "kakaoinfo";
//        } else {
//            return "main";
//        }

    }


    // 회원 탈퇴 - 탈퇴는 되는데 DB active 변경 안됨
    @RequestMapping(value = "/kakaounlink")
    public String unlink(HttpSession session) {
        ks.unlink((String) session.getAttribute("access_token"));
        session.invalidate();
        System.out.println("회원 탈퇴 완료");
        return "redirect:/main";
    }


    // 로그아웃
    @RequestMapping(value = "/kakaologout")
    public String logout(HttpSession session) {
        ks.logout((String) session.getAttribute("access_token"));
        session.invalidate();
        System.out.println("로그아웃 완료");
        return "redirect:/main";
    }

}


