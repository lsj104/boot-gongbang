package com.test.gongbang.member.login.kakao.model;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;


@Repository
public class KakaoRepository {

    @Autowired
    private SqlSession sql;

    // 일반 회원 정보 저장
    public void kakaoinsert(HashMap<String, Object> userInfo) {
        System.out.println("정보저장: " + userInfo);
        sql.insert("Member.kakaoInsert", userInfo);
        sql.insert("Member.kakaoInfo", userInfo);
    }

    // 일반 회원 정보 확인
    public KakaoDTO findkakao(HashMap<String, Object> userInfo) {
        System.out.println("nickname: " + userInfo.get("nickname"));
        System.out.println("email: " + userInfo.get("email"));
        return sql.selectOne("Member.findKakao", userInfo);
    }

    // 공방 정보 저장
    public void kakaogongbanginsert(HashMap<String, Object> userInfo) {
        System.out.println("정보저장: " + userInfo);
        sql.insert("Member.kakaoGongbangInsert", userInfo);
        sql.insert("Member.kakaoGongbangInfo", userInfo);
    }

    // 공방 정보 확인
    public KakaoDTO findkakaogongbang(HashMap<String, Object> userInfo) {
        System.out.println("nickname: " + userInfo.get("nickname"));
        System.out.println("email: " + userInfo.get("email"));
        return sql.selectOne("Member.findGongbamgKakao", userInfo);
    }

    // 회원 탈퇴
    public void kakaounsign(String item) {
        System.out.println("정보수정: " + item);
        sql.update("Member.kakaounsign", item);
    }

    // 로그인 후 전화번호, 이름 입력
    public void kakaoinfo(KakaoDTO dto) {
        sql.insert("Member.kakaoinfo", dto);
    }

}
