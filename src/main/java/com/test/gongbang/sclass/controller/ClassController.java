package com.test.gongbang.sclass.controller;

import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.stereotype.Controller;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.sclass.service.ClassService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ClassController {
    @Autowired private ClassService service;

    @GetMapping("/class")
    public String list(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") String page) {

        int totalCount = service.getTotalCount();

        String url = "/class";

        Paging paging = new Paging(Integer.parseInt(page), 9, 10, totalCount, url);

        List<ClassDTO> list = service.list(paging);

        model.addAttribute("list",list);
        model.addAttribute("paging",paging);

        return "class/class";
    }

    @GetMapping ("/classviewdetails")
    public String view(Model model, String seq) {

        ClassDTO dto = service.getClass(seq);
        ShopDTO sdto = service.getShop(seq);

        model.addAttribute("dto", dto);
        model.addAttribute("sdto", sdto);

        return "class/classviewdetails";
    }
}
