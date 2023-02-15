package com.test.gongbang.shop.controller;

import com.test.gongbang.shop.service.ShopDTO;
import com.test.gongbang.shop.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ShopController {

    @Autowired
    private ShopService service;

    @GetMapping (value = "/shop")
    public String board(Model model) {

        List<ShopDTO> list = service.list();

        model.addAttribute("list", list);

        return "shop/shop";
    }

}
