package com.test.gongbang.member.login.kakao.model;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;

@Repository
public class MemberRepository {

    @Autowired
    private SqlSession sql;

    // 정보 저장
    public void kakaoinsert(HashMap<String, Object> userInfo) {
        System.out.println("정보저장: " + userInfo);
        sql.insert("Member.kakaoInsert", userInfo);
        sql.insert("Member.kakaoInfo", userInfo);
    }

    // 정보 확인
    public KakaoDTO findkakao(HashMap<String, Object> userInfo) {
        System.out.println("nickname: " + userInfo.get("nickname"));
        System.out.println("email: " + userInfo.get("email"));
        return sql.selectOne("Member.findKakao", userInfo);

    }

    public void kakaoinfo(KakaoDTO dto) {
       sql.insert("", dto);
    }

}
