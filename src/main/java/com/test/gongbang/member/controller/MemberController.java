package com.test.gongbang.member.controller;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.member.service.MemberService;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.support.CustomSQLErrorCodesTranslation;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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

    //회원 정보 수정
    @GetMapping("/mypage/member")
    public String memberEdit(HttpSession session) {

        return "member/mypage/memberinfo";
    }

    //회원 > 클래스 예약 내역
    @GetMapping("/mypage/member/reserveinfo")
    public String reserveInfo(Model model, HttpSession session) {
        KakaoDTO dto = (KakaoDTO) session.getAttribute("user");
        String aseq = dto.getSeq() + "";

        System.out.println(aseq);

        List<MemberDTO> mlist = service.memberReserveInfo(aseq);
        List<ShopDTO> slist = service.memberReserveClassInfo(aseq);
        model.addAttribute("mlist", mlist);
        model.addAttribute("slist", slist);

        return "member/mypage/reserveinfo";
    }

}
