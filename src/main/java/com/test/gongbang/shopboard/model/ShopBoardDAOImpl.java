package com.test.gongbang.shopboard.model;

import com.test.gongbang.shopboard.service.ShopBoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ShopBoardDAOImpl implements ShopBoardDAO {

    @Autowired
    private SqlSessionTemplate template;


    @Override
    public List<ShopBoardDTO> list(String seq) {

        return this.template.selectList("shopboard.list", seq);
    }
}
