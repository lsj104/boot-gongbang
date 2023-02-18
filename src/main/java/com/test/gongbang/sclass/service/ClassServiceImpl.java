package com.test.gongbang.sclass.service;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.service.MemberDTO;
import com.test.gongbang.sclass.model.ClassDAO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

@Service
public class ClassServiceImpl implements ClassService{
    @Autowired
    private ClassDAO dao;

    @Override
    public List<ClassDTO> list(Paging paging, String searchType, String searchWord) {

        List<ClassDTO> list = Collections.emptyList();

        HashMap<String,Object> map = new HashMap<>();
        map.put("startRow", paging.getStartRow());
        map.put("endRow", paging.getEndRow());

        if (searchType == null || searchWord == null) {
            list = dao.allList(map);
        } else {
            map.put("searchType", searchType);
            map.put("searchWord", searchWord);

            list = dao.searchList(map);
        }

        return list;
    }

    @Override
    public Paging paging(int page, String searchType, String searchWord) {

        String url = "";
        int totalCount = 0;

        url = "/class";

        if (searchType == null || searchWord == null) {
            totalCount = dao.getTotalCount();
        } else {
            HashMap<String, String> searchMap = new HashMap<>();
            searchMap.put("searchType", searchType);
            searchMap.put("searchWord", searchWord);

            totalCount = dao.getSearchTotalCount(searchMap);
        }

        //System.out.println("totalCount"+totalCount);

        Paging paging = new Paging(page, 9, 10, totalCount);
        paging.pageBarMaker(paging, searchType, searchWord, url);

        return paging;
    }

    @Override
    public List<CategoryDTO> getCategory() {

        List<CategoryDTO> category = dao.getCategory();

        return category;
    }

    @Override
    public ClassDTO getClass(String seq) {

        ClassDTO dto = dao.getClass(seq);

        dto.setIntro(dto.getIntro().replace("\n\n", "<br/>"));
        dto.setCourse(dto.getCourse().replace("\n\n", "<br/>"));

        return dto;
    }

    @Override
    public ShopDTO getShop(String cseq) {

        ShopDTO sdto= dao.getShop(cseq);

        return sdto;
    }

    @Override
    public int reservation(String cseq, String rmembercnt, HttpSession session) {

        String aseq = ((KakaoDTO) session.getAttribute("user")).getSeq() + "";

        HashMap<String,String> reservationMap = new HashMap<>();
        reservationMap.put("aseq", aseq);
        reservationMap.put("cseq", cseq);
        reservationMap.put("rmembercnt", rmembercnt);

        int result = dao.reservation(reservationMap);

        return result;

    }

    @Override
    public String getShopSeq(HttpSession session) {

        String aseq = ((KakaoDTO) session.getAttribute("user")).getSeq() + "";

        String sseq = dao.getShopSeq(aseq);

        return sseq;
    }


    @Override
    public int addClass(MultipartHttpServletRequest multiReq) {

        ClassDTO dto = new ClassDTO();

        dto.setCseq(multiReq.getParameter("cseq"));
        dto.setName(multiReq.getParameter("name"));
        dto.setIntro(multiReq.getParameter("intro").replace("\r\n","<br/>"));
        dto.setCourse(multiReq.getParameter("course").replace("\r\n","<br/>"));
        dto.setTime(multiReq.getParameter("time"));
        dto.setDuedate(multiReq.getParameter("duedate"));
        dto.setDuetime(multiReq.getParameter("duetime"));
        dto.setMembercnt(multiReq.getParameter("membercnt"));
        dto.setPrice(multiReq.getParameter("price"));
        dto.setSseq(multiReq.getParameter("sseq"));

        MultipartFile mulFile = multiReq.getFile("image");
        String oriFilename = mulFile.getOriginalFilename();

        //String path = mreq.getRealPath("/static/image");
        //String path = "C:\\class\\code\\springboot\\profile";
        //String path = multiReq.getRealPath("resources/static/image/class");
        String path = "C:\\class\\code\\springboot\\boot-gongbang\\src\\main\\resources\\static\\image\\class";

        System.out.println("path" + path);

        if (!mulFile.isEmpty()) {
            String filename = getFileName(path, oriFilename);

            File file = new File(path + "\\" + filename);

            try {
                mulFile.transferTo(file);
            } catch (Exception e) {
                e.printStackTrace();
            }

            dto.setImage(filename);
        }

        int result = dao.addClass(dto);

        return result;
    }

    private String getFileName(String path, String filename) {
        int n = 1;
        int index = filename.lastIndexOf(".");

        String tempName = filename.substring(0, index);
        String tempExt = filename.substring(index);

        while (true) {

            File file = new File(path + "\\" + filename);

            if (file.exists()) {
                filename = String.format("%s_%d%s", tempName, n, tempExt);
                n++;
            } else {
                return filename;
            }
        }
    }

}
