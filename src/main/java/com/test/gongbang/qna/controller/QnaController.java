package com.test.gongbang.help.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/help")
public class HelpController {
    @GetMapping("list")
    public String boardlist() {
        return "/help/helplist";
    }
}
