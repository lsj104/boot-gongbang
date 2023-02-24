package com.test.gongbang.admin.controller;

import com.test.gongbang.admin.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
public class AdminController {

    @Autowired private AdminService service;

    @GetMapping("/admin/login")
    public String adminLogin(HttpSession session) {

        //로그인 실패시 session.login에 저장된 값 지우기
        session.removeAttribute("login");

        return "admin/login";
    }

    @PostMapping ("/admin/loginok")
    public String adminLoginOk(HttpServletRequest req, HttpSession session) {

        //로그인 실패시 session.login에 저장된 값 지우기
        session.removeAttribute("login");

        int result = service.loginOk(req.getParameter("id"), session);

        if (result == 1) {
            return "redirect:/main";
        } else {
            //로그인 실패
            //이전 페이지 url 가져오기
            String referer = req.getHeader("referer");
            //session.login에 fail 값 저장
            session.setAttribute("login", "fail");
            return "redirect:" + referer;
        }
    }

    @GetMapping ("/admin/logout")
    public String adminLogout(HttpSession session) {

        session.invalidate();
        System.out.println("로그아웃 완료");

        return "redirect:/main";
    }



}
