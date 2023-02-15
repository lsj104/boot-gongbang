package com.test.gongbang.shop.service;

import com.test.gongbang.shop.model.ShopDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShopServiceImpl implements ShopService {

    @Autowired
    private ShopDAO dao;

    @Override
    public List<ShopDTO> list() {

        return dao.list();
    }
}
