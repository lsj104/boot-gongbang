package com.test.gongbang.sclass.model;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.sclass.service.CategoryDTO;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
public class ClassDAOImpl implements ClassDAO {

    @Autowired SqlSessionTemplate template;

    @Override
    public List<ClassDTO> allList(HashMap<String, Object> map) {
        return template.selectList("class.alllist", map);
    }

    @Override
    public List<ClassDTO> searchList(HashMap<String, Object> map) {
        if (!map.isEmpty() && map.get("searchType").equals("category")) {
            return template.selectList("class.searchcategory", map);
        } else if (!map.isEmpty() && map.get("searchType").equals("shop")) {
            return template.selectList("class.searchshop", map);
        } else if (!map.isEmpty() && map.get("searchType").equals("class")) {
            return template.selectList("class.searchclass", map);
        } else if (!map.isEmpty() && map.get("searchType").equals("region")) {
            return template.selectList("class.searchregion", map);
        } else {
            return template.selectList("class.alllist", map);
        }
    }

    @Override
    public int getTotalCount() {
        return template.selectOne("class.totalcount");
    }

    @Override
    public int getSearchTotalCount(HashMap<String, String> searchMap) {
        System.out.println(searchMap.toString());
        System.out.println(searchMap.get("searchType"));
        if (searchMap.get("searchType").equals("category")) {
            return template.selectOne("class.searchcategorycount", searchMap);
        } else if (searchMap.get("searchType").equals("shop")) {
            return template.selectOne("class.searchshopcount", searchMap);
        } else if (searchMap.get("searchType").equals("class")) {
            return template.selectOne("class.searchclasscount", searchMap);
        } else if (searchMap.get("searchType").equals("region")) {
            return template.selectOne("class.searchregioncount", searchMap);
        } else {
            return template.selectOne("class.totalcount");
        }
    }

    @Override
    public List<CategoryDTO> getCategory() {
        return template.selectList("class.category");
    }

    @Override
    public ClassDTO getClass(String seq) {
        return template.selectOne("class.classviewdetails", seq);
    }

    @Override
    public ShopDTO getShop(String cseq) {
        return template.selectOne("class.shop", cseq);
    }

    @Override
    public int reservation(HashMap<String, String> reservationMap) {
        return template.insert("class.reservation", reservationMap);
    }


}
