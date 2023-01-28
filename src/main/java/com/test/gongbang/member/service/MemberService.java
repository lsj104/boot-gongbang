package com.test.gongbang.member.service;

import com.test.gongbang.shop.service.ShopDTO;

import java.util.List;

public interface MemberService {

    List<MemberDTO> memberReserveInfo(String aseq);

    List<ShopDTO> memberReserveClassInfo(String aseq);
}
