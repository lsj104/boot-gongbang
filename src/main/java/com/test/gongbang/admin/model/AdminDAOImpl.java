package com.test.gongbang.admin.model;

import com.test.gongbang.admin.service.AdminDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDAOImpl implements AdminDAO{

    @Autowired SqlSessionTemplate template;

    @Override
    public List<AdminDTO> loginOk(String id) {

        return template.selectList("admin.login",id);
    }
}
