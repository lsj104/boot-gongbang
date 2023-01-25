package com.test.gongbang.sclass.service;

import com.test.gongbang.sclass.model.ClassDAO;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClassServiceImpl implements ClassService{
    @Autowired
    private ClassDAO dao;

    @Override
    public List<ClassDTO> list() {

        List<ClassDTO> list = dao.list();

        return list;
    }

    @Override
    public ClassDTO getClass(String seq) {

        ClassDTO dto = dao.getClass(seq);

        return dto;
    }

    @Override
    public ShopDTO getShop(String sseq) {

        ShopDTO sdto= dao.getShop(sseq);

        return sdto;
    }
}
