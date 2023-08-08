package com.test.gongbang.sclass.service;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.sclass.model.ClassDAO;
import com.test.gongbang.shared.service.Paging;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
    public int checkReservation(HttpSession session, String cseq) {

        String aseq = ((KakaoDTO) session.getAttribute("user")).getSeq() + "";

        HashMap<String, String> checkReservationMap = new HashMap<>();
        checkReservationMap.put("aseq",aseq);
        checkReservationMap.put("cseq",cseq);

        int checkReservation = dao.checkReservation(checkReservationMap);

        return checkReservation;
    }


    @Override
    public int reservationAvailableCount(String seq) {

        int reservationAvailableCount = Integer.parseInt(dao.getClass(seq).getMembercnt()) - dao.reservationTotalCount(seq);

        return reservationAvailableCount;
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

        System.out.println(multiReq.getParameter("price"));

        dto.setCseq(multiReq.getParameter("cseq"));
        dto.setName(multiReq.getParameter("name"));
        dto.setIntro(multiReq.getParameter("intro").replace("\r\n","<br/>"));
        dto.setCourse(multiReq.getParameter("course").replace("\r\n","<br/>"));
        dto.setTime(multiReq.getParameter("time"));
        dto.setDuedate(multiReq.getParameter("duedate"));
        dto.setDuetime(multiReq.getParameter("duetime"));
        dto.setMembercnt(multiReq.getParameter("membercnt"));
        dto.setPrice(multiReq.getParameter("price").replace(",",""));
        dto.setSseq(multiReq.getParameter("sseq"));


        System.out.println(dto.getPrice());

        MultipartFile mulFile = multiReq.getFile("image");

        String oriFilename = mulFile.getOriginalFilename();

        mkDir();

        String path = "C:\\class\\code\\springboot\\class";

        System.out.println("path" + path);

        if (!mulFile.isEmpty()) {

            String filename = getFileName(path, oriFilename);

            File file = new File(path + "\\개설_" + filename);

            try {
                mulFile.transferTo(file);
            } catch (Exception e) {
                e.printStackTrace();
            }

            dto.setImage("개설_" + filename);
        }

        int result = dao.addClass(dto);

        return result;
    }

    private static void mkDir() {
        String path = "C:\\class\\code\\springboot\\class"; //폴더 경로
        File Folder = new File(path);

        // 해당 디렉토리가 없을경우 디렉토리를 생성합니다.
        if (!Folder.exists()) {
            try{
                Folder.mkdirs(); //폴더 생성합니다.
                System.out.println("폴더가 생성되었습니다.");
            }
            catch(Exception e){
                e.getStackTrace();
            }
        }else {
            System.out.println("이미 폴더가 생성되어 있습니다.");
        }

    }

    private String getFileName(String path, String filename) {
        int n = 1;
        int index = filename.lastIndexOf(".");

        String tempName = filename.substring(0, index);
        String tempExt = filename.substring(index);

        while (true) {

            File file = new File(path + "\\개설_" + filename);

            if (file.exists()) {
                filename = String.format("%s_%d%s", tempName, n, tempExt);
                n++;
            } else {
                return filename;
            }
        }
    }

    @Override
    public List<ClassDTO> newClass() {

        List<ClassDTO> newClass = dao.newClass();

        return newClass;
    }

    @Override
    public List<ClassDTO> bestClass() {

        List<ClassDTO> bestClass = dao.bestClass();

        return bestClass;
    }

}
