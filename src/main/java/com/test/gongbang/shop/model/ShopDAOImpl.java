package com.test.gongbang.shop.model;

import com.test.gongbang.shop.service.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShopDAOImpl implements ShopDAO {

    @Autowired
    private SqlSessionTemplate template;

    @Override
    public List<ShopDTO> list() {

        return this.template.selectList("shop.list");
    }
}
