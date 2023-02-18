package com.test.gongbang.shop.controller;

import com.test.gongbang.shop.service.ShopDTO;
import com.test.gongbang.shop.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ShopController {

    @Autowired
    private ShopService service;

    @GetMapping (value = "/shop")
    public String board(Model model, @RequestParam(value = "searchWord", required = false) String searchWord, @RequestParam(value = "searchType", required = false) String searchType) {

        List<ShopDTO> list = service.list(searchType, searchWord);

        model.addAttribute("list", list);

       /* System.out.println(searchType);
        System.out.println(searchWord);*/

        return "shop/shop";
    }

}
