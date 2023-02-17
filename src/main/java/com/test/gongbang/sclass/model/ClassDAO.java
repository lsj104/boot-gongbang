package com.test.gongbang.sclass.model;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.sclass.service.CategoryDTO;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;

import java.util.HashMap;
import java.util.List;

public interface ClassDAO {

    List<ClassDTO> allList(HashMap<String, Object> map);

    List<ClassDTO> searchList(HashMap<String, Object> map);

    int getTotalCount();

    int getSearchTotalCount(HashMap<String, String> searchMap);

    List<CategoryDTO> getCategory();

    ClassDTO getClass(String seq);

    ShopDTO getShop(String cseq);

    int reservation(HashMap<String, String> reservationMap);
}
