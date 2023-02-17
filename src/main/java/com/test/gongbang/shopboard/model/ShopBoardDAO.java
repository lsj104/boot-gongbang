package com.test.gongbang.shopboard.model;

import com.test.gongbang.shopboard.service.ShopBoardDTO;


import java.util.List;

public interface ShopBoardDAO {

    List<ShopBoardDTO> list(String seq);
}
