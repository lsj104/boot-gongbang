package com.test.gongbang.member.service;

import com.test.gongbang.member.model.MemberDAO;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO dao;

    @Override
    public List<MemberDTO> memberReserveInfo(String aseq) {

        List<MemberDTO> list = dao.memberReserveInfo(aseq);

        for (MemberDTO dto : list) {
            String rdate = dto.getRdate();
            rdate = rdate.substring(0, 10);
            dto.setRdate(rdate);
        }

        return list;
    }

    @Override
    public List<ShopDTO> memberReserveClassInfo(String aseq) {
        return dao.memberReserveClassInfo(aseq);
    }

    @Override
    public List<ClassDTO> gongbangClassList(String aseq) {

        List<ClassDTO> list = dao.gongbangClassList(aseq);

        for (ClassDTO dto : list) {
            String duedate = dto.getDuedate();
            duedate = duedate.substring(0, 10);
            dto.setDuedate(duedate);
        }
        return list;
     }

    @Override
    public ClassDTO classEdit(String seq) {
        return dao.classEdit(seq);
    }

}
