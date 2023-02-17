package com.test.gongbang.shopboard.service;

import com.test.gongbang.shopboard.model.ShopBoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopBoardServiceImpl implements ShopBoardService {
    @Autowired
    private ShopBoardDAO dao;
    @Override
    public List<ShopBoardDTO> list(String seq) {

        return dao.list(seq);
    }


}
