package com.test.gongbang.sclass.model;

import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClassDAOImpl implements ClassDAO {

    @Autowired SqlSessionTemplate template;

    @Override
    public List<ClassDTO> list() {
        return template.selectList("class.list");
    }

    @Override
    public ClassDTO getClass(String seq) {
        return template.selectOne("class.classviewdetails", seq);
    }

    @Override
    public ShopDTO getShop(String sseq) {
        return template.selectOne("class.shop", sseq);
    }
}
