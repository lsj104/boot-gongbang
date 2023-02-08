package com.test.gongbang.sclass.service;

import com.test.gongbang.sclass.model.ClassDAO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassServiceImpl implements ClassService{
    @Autowired
    private ClassDAO dao;

    @Override
    public List<ClassDTO> list(Paging paging) {

        List<ClassDTO> list = dao.list(paging);

        return list;
    }

    @Override
    public int getTotalCount() {

        int totalPage = dao.getTotalCount();

        return totalPage;
    }


    @Override
    public ClassDTO getClass(String seq) {

        ClassDTO dto = dao.getClass(seq);

        dto.setIntro(dto.getIntro().replace("\n\n", "<br/>"));
        dto.setCourse(dto.getCourse().replace("\n\n", "<br/>"));

        return dto;
    }

    @Override
    public ShopDTO getShop(String cseq) {

        ShopDTO sdto= dao.getShop(cseq);

        return sdto;
    }
}
