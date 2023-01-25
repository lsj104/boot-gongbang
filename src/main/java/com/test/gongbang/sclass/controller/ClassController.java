package com.test.gongbang.sclass.controller;

import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.stereotype.Controller;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.sclass.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ClassController {
    @Autowired private ClassService service;

    @GetMapping("/class")
    public String list(Model model) {

        List<ClassDTO> list = service.list();

        model.addAttribute("list",list);

        return "class";
    }
    @GetMapping ("/classviewdetails")
    public String view(Model model, String seq) {

        ClassDTO dto = service.getClass(seq);
        ShopDTO sdto = service.getShop(seq);

        model.addAttribute("dto", dto);
        model.addAttribute("sdto", sdto);

        return "classviewdetails";
    }
}
