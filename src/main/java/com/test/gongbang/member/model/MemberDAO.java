package com.test.gongbang.member.model;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;

import java.util.List;

public interface MemberDAO {

    List<MemberDTO> memberReserveInfo(String aseq);

    List<ClassDTO> gongbangClassList(String aseq);

    ClassDTO classDetail(String seq);

    int memberEdit(MemberDTO dto);


    int reserveDel(String seq);

    List<MemberDTO> reserveMemberInfo(String seq);
}
