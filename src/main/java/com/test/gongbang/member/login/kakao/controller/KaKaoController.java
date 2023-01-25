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
        return "member/login/myaccount";
    }


    // 일반 회원
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

        System.out.println("aaaa");

//        return "redirect:/index"; // 받아온 값 test page

        if (dto.getTel() == null) {
            return "member/login/kakaoinfo";
        } else {
            return "redirect:/main";
        }

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
        System.out.println("aaaa");

        // 전화번호 null일때 번호 입력 페이지
        if (dto.getTel() == null) {
            return "member/login/kakaoinfo";
        } else {
            return "redirect:/main";
        }
    }

    // 회원 탈퇴
    @RequestMapping(value = "/kakaounlink")
    public String unlink(HttpSession session) {
        ks.unlink((String) session.getAttribute("access_token"), ((KakaoDTO) session.getAttribute("user")).getId());
        System.out.println(((KakaoDTO) session.getAttribute("user")).getId());
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

    // 카카오 로그인 -> 이름, 번호 입력
    @PostMapping(value = "/kakaoinfo")
    public String kakaoinfo(KakaoDTO dto) {
//        System.out.println(111);
        System.out.println("kakaoinfo: " + dto);
        ks.kakaoinfo(dto);
        return "redirect:/main";
    }

}


