package com.test.gongbang.member.service;

import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface MemberService {

    List<MemberDTO> memberReserveInfo(String aseq);

    List<ClassDTO> gongbangClassList(String aseq);

    ClassDTO classDetail(String seq);

    int memberEdit(MultipartHttpServletRequest mreq, HttpSession session);

    int reserveDel(String seq);

    int gongbangEdit(MultipartHttpServletRequest mreq, HttpSession session);

    List<MemberDTO> reserveMemberInfo(String seq);
}
