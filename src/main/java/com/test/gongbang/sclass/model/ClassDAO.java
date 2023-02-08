package com.test.gongbang.sclass.model;

import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;

import java.util.List;

public interface ClassDAO {

    List<ClassDTO> list(Paging paging);

    int getTotalCount();

    ClassDTO getClass(String seq);

    ShopDTO getShop(String cseq);
}
