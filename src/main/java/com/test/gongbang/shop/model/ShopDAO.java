package com.test.gongbang.shop.model;

import com.test.gongbang.shop.service.ShopDTO;

import java.util.HashMap;
import java.util.List;

public interface ShopDAO {
    List<ShopDTO> allList();

    List<ShopDTO> searchList(HashMap<String, String> map);
}
