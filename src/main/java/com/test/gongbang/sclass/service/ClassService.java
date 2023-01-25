package com.test.gongbang.sclass.service;

import com.test.gongbang.shop.service.ShopDTO;

import java.util.List;

public interface ClassService {

    List<ClassDTO> list();

    ClassDTO getClass(String seq);

    ShopDTO getShop(String sseq);
}
