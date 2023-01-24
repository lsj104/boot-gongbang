package com.test.gongbang.feed.controller;

import com.test.gongbang.feed.service.FeedDTO;
import com.test.gongbang.feed.service.FeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class FeedController {
    @Autowired private FeedService service;

    @GetMapping("/feed")
    public String list(Model model) {
        List<FeedDTO> list = service.list();

        model.addAttribute("list",list);

        return "feed";
    }

    @GetMapping("/feedview")
    public String feedview(){
            return "feedview";
    }

}
