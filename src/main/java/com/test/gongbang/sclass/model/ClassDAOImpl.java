package com.test.gongbang.sclass.model;

import com.test.gongbang.sclass.service.ClassDTO;

import com.test.gongbang.sclass.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ClassDAOImpl implements ClassDAO {

    @Autowired SqlSessionTemplate template;

    @Override
    public List<ClassDTO> list(Paging paging) {
        return template.selectList("class.list", paging);
    }

    @Override
    public int getTotalCount() {
        return template.selectOne("class.totalcount");
    }

    @Override
    public ClassDTO getClass(String seq) {
        return template.selectOne("class.classviewdetails", seq);
    }

    @Override
    public ShopDTO getShop(String cseq) {
        return template.selectOne("class.shop", cseq);
    }
}
