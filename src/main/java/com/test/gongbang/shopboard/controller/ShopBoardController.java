package com.test.gongbang.shopboard.controller;

import com.test.gongbang.shopboard.service.ShopBoardDTO;
import com.test.gongbang.shopboard.service.ShopBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
@RequestMapping("/shopboard")
public class ShopBoardController {

    @Autowired
    private ShopBoardService service;


    @GetMapping(value = "/list")
    public String board(Model model, @RequestParam String seq, @RequestParam String shopnickname, @RequestParam(value = "searchWord", required = false) String searchWord, @RequestParam(value = "searchType", required = false) String searchType) {

        List<ShopBoardDTO> list = service.list(seq, searchType, searchWord);

        model.addAttribute("list", list);
        model.addAttribute("shopnickname", shopnickname);
        model.addAttribute("seq", seq);

        System.out.println(searchType);
        System.out.println(searchWord);
        System.out.println(shopnickname);
        System.out.println(seq);

        return "shopboard/shopboard";
    }

/*
    @GetMapping("/insert")
    public String openShopWrite(HttpSession session, Model model, HttpServletResponse response) throws Exception {

        if (session.getAttribute("user") == null) {
            response.setContentType("text/html; charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('로그인 후 이용해 주세요.'); location.href='/shop'</script>");
            out.flush();
        }
        return "/shopboard/insert";
    }
*/




}
