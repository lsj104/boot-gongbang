package com.test.gongbang.sclass.service;

import lombok.Data;

@Data
public class MemberClassDTO {
    private String seq;         //예약번호
    private String mseq;        //회원 seq
    private String cseq;        //클래스 seq
    private String rdate;       //예약 날짜
    private String rmembercnt;  //예약인원
}
