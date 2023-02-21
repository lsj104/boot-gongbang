package com.test.gongbang.shopboard.model;

import com.test.gongbang.shopboard.service.ShopBoardDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class ShopBoardDAOImpl implements ShopBoardDAO {

    @Autowired
    private SqlSessionTemplate template;


    @Override
    public List<ShopBoardDTO> allList(String seq) {

        return this.template.selectList("shopboard.list", seq);
    }

    @Override
    public List<ShopBoardDTO> searchList(HashMap<String, String> map, String seq) {

        if (map.isEmpty()) {
            return this.template.selectList("shopboard.list", seq);
        } else {
            if (map.get("searchType").equals("1")) return this.template.selectList("shopboard.searchAll", map);
            else if (map.get("searchType").equals("2")) return this.template.selectList("shopboard.searchTitle", map);
            else if (map.get("searchType").equals("3")) return  this.template.selectList("shopboard.searchWriter", map);
            else return this.template.selectList("shopboard.list");
        }

    }
}
