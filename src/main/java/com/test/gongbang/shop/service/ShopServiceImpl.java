package com.test.gongbang.shop.service;


import com.test.gongbang.shop.model.ShopDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@Service
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopDAO dao;

    @Override
    public List<ShopDTO> list(String searchType, String searchWord) {

        List<ShopDTO> list = Collections.emptyList();

        if (searchType == null || searchWord == null) {
            list = dao.allList();
        } else {
            HashMap<String,String> map = new HashMap<>();
            map.put("searchType", searchType);
            map.put("searchWord", searchWord);

            list = dao.searchList(map);
        }

        return list;

    }
}
