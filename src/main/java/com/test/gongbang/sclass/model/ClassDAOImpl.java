package com.test.gongbang.sclass.model;

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
        if (map.isEmpty()) {
            return template.selectList("class.alllist", map);
        } else {
            if(map.get("searchType").equals("category")) return template.selectList("class.searchcategory", map);
            else if (map.get("searchType").equals("shop")) return template.selectList("class.searchshop", map);
            else if (map.get("searchType").equals("class")) return template.selectList("class.searchclass", map);
            else if (map.get("searchType").equals("region")) return template.selectList("class.searchregion", map);
            else return template.selectList("class.alllist", map);
        }
    }

    @Override
    public int getTotalCount() {
        return template.selectOne("class.totalcount");
    }

    @Override
    public int getSearchTotalCount(HashMap<String, String> searchMap) {

        if (searchMap.get("searchType").equals("category")) return template.selectOne("class.searchcategorycount", searchMap);
        else if (searchMap.get("searchType").equals("shop")) return template.selectOne("class.searchshopcount", searchMap);
        else if (searchMap.get("searchType").equals("class")) return template.selectOne("class.searchclasscount", searchMap);
        else if (searchMap.get("searchType").equals("region")) return template.selectOne("class.searchregioncount", searchMap);
        else return template.selectOne("class.totalcount");

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
    public int checkReservation(HashMap<String, String> checkReservationMap) {

        int checkReservation = template.selectOne("class.checkreservation", checkReservationMap);

        return checkReservation;
    }


    @Override
    public int reservationTotalCount(String seq) {
        return template.selectOne("class.reservationtotalcount", seq);
    }

    @Override
    public int reservation(HashMap<String, String> reservationMap) {
        return template.insert("class.reservation", reservationMap);
    }

    @Override
    public String getShopSeq(String aseq) {
        return template.selectOne("class.getShopSeq", aseq);
    }

    @Override
    public int addClass(ClassDTO dto) {
        return template.insert("class.add",dto);
    }

    @Override
    public List<ClassDTO> bestClass() {
        return template.selectList("class.bestClass");
    }

    @Override
    public List<ClassDTO> newClass() {
        return template.selectList("class.newClass");
    }

}
