package com.test.gongbang.member.login.kakao.model;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class KakaoDAO {
    @Autowired
    private SqlSessionTemplate template;

    public KakaoDTO get(String id) {
        return template.selectOne("Member.get", id);
    }

}
