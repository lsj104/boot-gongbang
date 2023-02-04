package com.test.gongbang.member.controller;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.member.service.MemberService;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
public class MemberController {

    @Autowired
    private MemberService service;

    //마이페이지 메인
    @GetMapping("/mypage")
    public String memberInfo(HttpSession session) {

        return "member/mypage/main";
    }

    //회원 > 정보 수정
    @GetMapping("/mypage/member")
    public String memberEdit(HttpSession session) {

        return "member/mypage/memberinfo";
    }

    //회원 > 정보 수정 처리
    @PostMapping("/mypage/member/editok")
    public String editok(HttpServletRequest resp, HttpSession session) {

        String nickname = resp.getParameter("nickname");

        System.out.println(nickname);

        return "memeber/mypage/memberinfo";
    }

    //회원 > 클래스 예약 내역
    @GetMapping("/mypage/member/reserveinfo")
    public String reserveInfo(Model model, HttpSession session) {
        KakaoDTO dto = (KakaoDTO) session.getAttribute("user");
        String aseq = dto.getSeq() + "";

        List<MemberDTO> mlist = service.memberReserveInfo(aseq);
        List<ShopDTO> slist = service.memberReserveClassInfo(aseq);
        model.addAttribute("mlist", mlist);
        model.addAttribute("slist", slist);

        return "member/mypage/reserveinfo";
    }

    //공방 > 정보 수정
    @GetMapping("/mypage/gongbang")
    public String gongbangEdit(HttpSession session) {

        return "member/mypage/gongbanginfo";
    }

    //공방 > 클래스 목록
    @GetMapping("/mypage/gongbang/classlist")
    public String gongbangClass(Model model, HttpSession session) {

        KakaoDTO dto = (KakaoDTO) session.getAttribute("user");
        String aseq = dto.getSeq() + "";

        List<ClassDTO> list = service.gongbangClassList(aseq);
        model.addAttribute("list", list);

        return "member/mypage/classlist";
    }

    //공방 > 클래스 상세(수정)페이지
    @GetMapping("/mypage/gongbang/classinfo")
    public String classInfo(Model model, @RequestParam String seq) {

        ClassDTO dto = service.classEdit(seq);
        model.addAttribute("dto", dto);

        return "member/mypage/classinfo";
    }
}
