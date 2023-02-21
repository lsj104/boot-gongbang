package com.test.gongbang.shopboard.service;

import java.util.List;

public interface ShopBoardService {

    List<ShopBoardDTO> list(String seq, String searchType, String searchWord);
}
