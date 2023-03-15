package com.test.gongbang.shopboard.service;

import com.test.gongbang.shopboard.model.ShopBoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@Service
public class ShopBoardServiceImpl implements ShopBoardService {
    @Autowired
    private ShopBoardDAO dao;

    @Override
    public List<ShopBoardDTO> list(String seq, String searchType, String searchWord) {

        List<ShopBoardDTO> list = Collections.emptyList();

        if (searchType == null || searchWord == null) {

            list = dao.allList(seq);

        } else {

            HashMap<String, String> map = new HashMap<>();

            map.put("searchType", searchType);
            map.put("searchWord", searchWord);
            map.put("seq", seq);

            list = dao.searchList(map, seq);
        }

        return list;
    }


}
