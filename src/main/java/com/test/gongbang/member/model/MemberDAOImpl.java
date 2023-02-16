package com.test.gongbang.member.model;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.sclass.service.ClassDTO;
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
    public List<ClassDTO> gongbangClassList(String aseq) {
        return this.template.selectList("mypage.gongbangclasslist", aseq);
    }

    @Override
    public ClassDTO classDetail(String seq) {
        return this.template.selectOne("mypage.gongbangclassinfo", seq);
    }

    @Override
    public int memberEdit(MemberDTO dto) {
        return this.template.update("mypage.memberedit", dto);
    }

    @Override
    public int reserveDel(String seq) {
        return this.template.delete("mypage.reservedel", seq);
    }

    @Override
    public List<MemberDTO> reserveMemberInfo(String seq) {
        return this.template.selectList("mypage.reservemember", seq);
    }

    @Override
    public int gongbangEdit(MemberDTO dto) {
        return this.template.update("mypage.gongbangedit", dto);
    }

    @Override
    public int sclassDel(String seq) {
        return this.template.delete("mypage.classdel", seq);
    }

    @Override
    public int classEdit(ClassDTO dto) {
        return this.template.update("mypage.classedit", dto);
    }
}

