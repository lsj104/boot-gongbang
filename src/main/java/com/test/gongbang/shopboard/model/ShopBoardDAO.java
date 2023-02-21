package com.test.gongbang.shopboard.model;

import com.test.gongbang.shopboard.service.ShopBoardDTO;


import java.util.HashMap;
import java.util.List;

public interface ShopBoardDAO {

    List<ShopBoardDTO> allList(String seq);

    List<ShopBoardDTO> searchList(HashMap<String, String> map, String seq);

}
