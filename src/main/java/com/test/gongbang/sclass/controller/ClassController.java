package com.test.gongbang.sclass.controller;

import com.test.gongbang.sclass.service.CategoryDTO;
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
    public String list(Model model, @RequestParam(value = "page", required = false, defaultValue = "1") String page, @RequestParam(value = "searchType", required = false) String searchType, @RequestParam(value = "searchWord", required = false) String searchWord) {

        Paging paging = service.paging(Integer.parseInt(page), searchType, searchWord);

        List<ClassDTO> list = service.list(paging, searchType, searchWord);

        List<CategoryDTO> category = service.getCategory();

        model.addAttribute("list", list);
        model.addAttribute("paging", paging);
        model.addAttribute("category", category);
        model.addAttribute("searchWord", searchWord);

        return "class/class";
    }

    @GetMapping ("/classviewdetails")
    public String view(Model model, @RequestParam String seq) {

        ClassDTO dto = service.getClass(seq);
        ShopDTO sdto = service.getShop(seq);

        model.addAttribute("dto", dto);
        model.addAttribute("sdto", sdto);

        return "class/classviewdetails";
    }
}
