package com.test.gongbang.member.model;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.shop.service.ShopDTO;

import java.util.List;

public interface MemberDAO {

    List<MemberDTO> memberReserveInfo(String aseq);

    List<ShopDTO> memberReserveClassInfo(String aseq);
}
