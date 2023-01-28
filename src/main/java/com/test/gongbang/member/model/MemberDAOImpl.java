package com.test.gongbang.member.model;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    private SqlSessionTemplate template;

    @Override
    public List<MemberDTO> memberReserveInfo(String aseq) {
        return this.template.selectList("mypage.reserveinfo", aseq);
    }

    @Override
    public List<ShopDTO> memberReserveClassInfo(String aseq) {
        return this.template.selectList("mypage.reserveshopinfo", aseq);
    }
}
