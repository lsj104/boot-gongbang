package com.test.gongbang.member.login.kakao.controller;

import com.test.gongbang.member.login.kakao.model.KakaoRepository;
import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.login.kakao.service.KakaoService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class KaKaoController {

    @Autowired
    KakaoService ks;

    @Autowired
    private KakaoRepository mr;
    KakaoDTO dto = new KakaoDTO();

    @GetMapping("/login")
    public String loginPage() {
        return "member/login/myaccount";
    }


    // 일반 회원 - 회원가입
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

//        return "redirect:/index"; // 받아온 값 test page

//        if (dto.getTel() == null) {
//            return "member/login/kakaoinfo";
//
//        } else {
//            return "redirect:/main";
//        }

        return "member/login/kakaoinfo";

    }

    // 공방 - 회원가입
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

        return "member/login/gongkakaoinfo";

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
    public void kakaoinfo(KakaoDTO dto, HttpServletResponse response) throws IOException {
        System.out.println("kakaoinfo: " + dto);
        ks.kakaoinfo(dto);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('회원가입이 완료됐습니다. 로그인 후 이용해 주세요.'); location.href='/member/login';</script>");
        out.flush();
//        return "redirect:/main";
    }

    // 카카오 로그인 -> 공방
    @PostMapping(value = "/gongkakaoinfo")
    public void gongkakaoinfo(KakaoDTO dto, HttpServletResponse response) throws IOException {
//        System.out.println(111);
        System.out.println("gongkakaoinfo: " + dto);
        ks.gongkakaoinfo(dto);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.println("<script>alert('회원가입이 완료됐습니다. 로그인 후 이용해 주세요.'); location.href='/member/login';</script>");
        out.flush();
//        return "redirect:/main";
    }

    // 일반 회원 로그인
    @GetMapping("/kakaologin")
    public String kakaologin(@RequestParam String code, Model model, HttpSession session, HttpServletResponse response) throws IOException {

        System.out.println("code = " + code);
        String access_token = ks.getLoginToken(code);
        KakaoDTO userInfo = ks.getlogininfo(access_token);

        model.addAttribute("code", code);
        model.addAttribute("access_token", access_token);
        model.addAttribute("userInfo", userInfo);
        session.setAttribute("access_token", access_token);
        session.setAttribute("user", userInfo);

//        if (userInfo == null) {
//            response.setContentType("text/html; charset=UTF-8");
//            PrintWriter out = response.getWriter();
//            out.println("<script>alert('회원가입 후 이용해 주세요.'); location.href='/member/login';</script>");
//            out.flush();
//        }

        return "redirect:/main";
    }


    // 공방 회원 로그인
    @GetMapping("/gongkakaologin")
    public String gongkakaologin(@RequestParam String code, Model model, HttpSession session) throws IOException {

        System.out.println("code = " + code);
        String access_token = ks.getgongLoginToken(code);
        KakaoDTO userInfo = ks.getgonglogininfo(access_token);
        model.addAttribute("code", code);
        model.addAttribute("access_token", access_token);
        model.addAttribute("userInfo", userInfo);

        session.setAttribute("access_token", access_token);
        session.setAttribute("user", userInfo);

        return "redirect:/main";

    }


}


