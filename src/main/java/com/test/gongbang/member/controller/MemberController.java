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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
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
    public String editok(MultipartHttpServletRequest mreq, HttpSession session) {

        int result = service.memberEdit(mreq, session);

        if (result == 1) {
            return "redirect:/mypage";
        } else {
            return "mypage/member/main";
        }
    }

    //회원 > 클래스 예약 내역
    @GetMapping("/mypage/member/reserveinfo")
    public String reserveInfo(Model model, HttpSession session) {
        KakaoDTO dto = (KakaoDTO) session.getAttribute("user");
        String aseq = dto.getSeq() + "";

        List<MemberDTO> list = service.memberReserveInfo(aseq);
        model.addAttribute("list", list);

        return "member/mypage/reserveinfo";
    }

    //회원 > 예약 취소
    @GetMapping("/mypage/member/reservedel")
    public void reserveDel(@RequestParam String seq, HttpServletResponse response) throws IOException {

        int result = service.reserveDel(seq);

        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (result == 1) {
            out.println("<script>alert('취소되었습니다.'); location.href='/mypage/member/reserveinfo'</script>");
        } else {
            out.println("<script>alert('다시 시도해주세요.'); location.href='/mypage/member/reserveinfo'</script>");
        }
        out.flush();
    }


    //공방 > 정보 수정
    @GetMapping("/mypage/gongbang")
    public String gongbangEdit(HttpSession session) {

        return "member/mypage/gongbanginfo";
    }

    //공방 정보 수정 처리
    @PostMapping("/mypage/gongbang/editok")
    public String gongbangEditok(MultipartHttpServletRequest mreq, HttpSession session) {

        int result = service.gongbangEdit(mreq, session);

        if (result == 1) {
            return "redirect:/mypage";
        } else {
            return "mypage/gongbang/main";
        }
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

        ClassDTO dto = service.classDetail(seq);
        model.addAttribute("dto", dto);

        return "member/mypage/classinfo";
    }

    //예약관리 모달
    @GetMapping("/mypage/gongbang/classreserve")
    public String reserveMemberInfo(@RequestParam String seq, Model model){

        List<MemberDTO> list = service.reserveMemberInfo(seq);
        model.addAttribute("list", list);

        return "member/mypage/classreserve";
    }

}
