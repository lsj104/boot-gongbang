package com.test.gongbang.feed.controller;

import com.test.gongbang.feed.service.FeedDTO;
import com.test.gongbang.feed.service.FeedService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class FeedController {
    @Autowired private FeedService service;

    @GetMapping("feed/feed")
    public String list(Model model) {
        List<FeedDTO> list = service.list();

        model.addAttribute("list",list);

        return "feed/feed";
    }

    @GetMapping("feed/feedview")
    public String feedview(@RequestParam String seq , Model model){

        FeedDTO dto = service.feedview(seq);

        model.addAttribute("feedview", dto);

        return "feed/feedview";

    }

}
