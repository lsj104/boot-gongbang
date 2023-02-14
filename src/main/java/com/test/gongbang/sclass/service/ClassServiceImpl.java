package com.test.gongbang.sclass.service;

import com.test.gongbang.sclass.model.ClassDAO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@Service
public class ClassServiceImpl implements ClassService{
    @Autowired
    private ClassDAO dao;

    @Override
    public List<ClassDTO> list(Paging paging, String searchType, String searchWord) {

        List<ClassDTO> list = Collections.emptyList();

        HashMap<String,Object> map = new HashMap<>();
        map.put("startRow", paging.getStartRow());
        map.put("endRow", paging.getEndRow());

        if (searchType == null || searchWord == null) {
            list = dao.allList(map);
        } else {
            map.put("searchType", searchType);
            map.put("searchWord", searchWord);

            list = dao.searchList(map);
        }

        return list;
    }

    @Override
    public Paging paging(int page, String searchType, String searchWord) {

        String url = "";
        int totalCount = 0;

        url = "/class";

        if (searchType == null || searchWord == null) {
            totalCount = dao.getTotalCount();
        } else {
            HashMap<String, String> searchMap = new HashMap<>();
            searchMap.put("searchType", searchType);
            searchMap.put("searchWord", searchWord);

            totalCount = dao.getSearchTotalCount(searchMap);
        }

        //System.out.println("totalCount"+totalCount);

        Paging paging = new Paging(page, 9, 10, totalCount);
        paging.pageBarMaker(paging, searchType, searchWord, url);

        return paging;
    }

    @Override
    public ClassDTO getClass(String seq) {

        ClassDTO dto = dao.getClass(seq);

        dto.setIntro(dto.getIntro().replace("\n\n", "<br/>"));
        dto.setCourse(dto.getCourse().replace("\n\n", "<br/>"));

        return dto;
    }

    @Override
    public ShopDTO getShop(String cseq) {

        ShopDTO sdto= dao.getShop(cseq);

        return sdto;
    }

    @Override
    public List<CategoryDTO> getCategory() {

        List<CategoryDTO> category = dao.getCategory();

        return category;
    }

}
