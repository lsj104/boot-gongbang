package com.test.gongbang.sclass.service;

import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface ClassService {

    List<ClassDTO> list(Paging paging, String SearchType, String searchWord);

    Paging paging(int parseInt, String searchType, String searchWord);

    List<CategoryDTO> getCategory();

    ClassDTO getClass(String seq);

    ShopDTO getShop(String cseq);

    int reservation(String cseq, String rmembercnt, HttpSession session);

    String getShopSeq(HttpSession session);

    int addClass(MultipartHttpServletRequest multireq);


}
