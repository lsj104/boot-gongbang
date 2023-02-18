package com.test.gongbang.shop.model;

import com.test.gongbang.shop.service.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class ShopDAOImpl implements ShopDAO {

    @Autowired
    private SqlSessionTemplate template;

    @Override
    public List<ShopDTO> allList() {

        return this.template.selectList("shop.list");
    }

    @Override
    public List<ShopDTO> searchList(HashMap<String, String> map) {

        if (map.isEmpty()) {
            return this.template.selectList("shop.list");
        } else {
            if (map.get("searchType").equals("1")) return this.template.selectList("shop.searchall", map);
            else if (map.get("searchType").equals("2")) return this.template.selectList("shop.searchshop", map);
            else if (map.get("searchType").equals("3")) return  this.template.selectList("shop.searchaddress", map);
            else return this.template.selectList("shop.list");
        }
    }
}
