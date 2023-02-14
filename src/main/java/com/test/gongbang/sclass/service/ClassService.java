package com.test.gongbang.sclass.service;

import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;

import java.util.List;

public interface ClassService {

    List<ClassDTO> list(Paging paging, String SearchType, String searchWord);

    Paging paging(int parseInt, String searchType, String searchWord);

    ClassDTO getClass(String seq);

    ShopDTO getShop(String cseq);

    List<CategoryDTO> getCategory();

}
