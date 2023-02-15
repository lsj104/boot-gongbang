package com.test.gongbang.member.service;

import com.test.gongbang.member.login.kakao.service.KakaoDTO;
import com.test.gongbang.member.model.MemberDAO;
import com.test.gongbang.sclass.service.ClassDTO;
import com.test.gongbang.shop.service.ShopDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;
import javax.swing.filechooser.FileSystemView;
import java.io.File;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO dao;

    @Override
    public List<MemberDTO> memberReserveInfo(String aseq) {

        List<MemberDTO> list = dao.memberReserveInfo(aseq);

        for (MemberDTO dto : list) {
            String rdate = dto.getRdate();
            String duedate = dto.getDuedate();

            rdate = rdate.substring(0, 10);
            duedate = duedate.substring(0, 10);

            dto.setRdate(rdate);
            dto.setDuedate(duedate);
        }

        return list;
    }


    @Override
    public List<ClassDTO> gongbangClassList(String aseq) {

        List<ClassDTO> list = dao.gongbangClassList(aseq);

        for (ClassDTO dto : list) {
            String duedate = dto.getDuedate();
            duedate = duedate.substring(0, 10);
            dto.setDuedate(duedate);
        }
        return list;
    }

    @Override
    public ClassDTO classDetail(String seq) {
        return dao.classDetail(seq);
    }

    //회원정보 수정
    @Override
    public int memberEdit(MultipartHttpServletRequest mreq, HttpSession session) {

        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        MemberDTO dto = new MemberDTO();

        if (kdto.getNickname() != mreq.getParameter("nickname")) {
            dto.setNickname(mreq.getParameter("nickname"));
            kdto.setNickname(mreq.getParameter("nickname"));
        }

        if (kdto.getTel() != mreq.getParameter("tel")) {
            dto.setTel(mreq.getParameter("tel"));
            kdto.setTel(mreq.getParameter("tel"));
        }

        if (kdto.getAddress() != mreq.getParameter("address")) {
            dto.setAddress(mreq.getParameter("address"));
            kdto.setAddress(mreq.getParameter("address"));
        }

        dto.setSeq(kdto.getSeq()+"");

        System.out.println(dto);

        if (kdto.getImage() != mreq.getParameter("image")) {

            MultipartFile file = mreq.getFile("image");
            String filename = file.getOriginalFilename();

            //String path = mreq.getRealPath("/static/image");
            String path = "C:\\class\\code\\springboot\\profile";

            System.out.println(path);

            if (!file.isEmpty()) {
                String file1 = getFileName(path, filename);

                try {
                    file.transferTo(new File(path + "\\" + file1));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dto.setImage(file1);
                kdto.setImage(file1);

            }
        }

        int result = dao.memberEdit(dto);
        System.out.println("service:" + kdto);

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

    //회원 > 예약 취소
    @Override
    public int reserveDel(String seq) {
        return dao.reserveDel(seq);
    }


    //공방 > 정보 수정
    @Override
    public int gongbangEdit(MultipartHttpServletRequest mreq, HttpSession session) {

        KakaoDTO kdto = (KakaoDTO) session.getAttribute("user");
        MemberDTO dto = new MemberDTO();

        if (kdto.getNickname() != mreq.getParameter("nickname")) {
            dto.setNickname(mreq.getParameter("nickname"));
            kdto.setNickname(mreq.getParameter("nickname"));
        }

        if (kdto.getTel() != mreq.getParameter("tel")) {
            dto.setTel(mreq.getParameter("tel"));
            kdto.setTel(mreq.getParameter("tel"));
        }

        if (kdto.getAddress() != mreq.getParameter("address")) {
            dto.setAddress(mreq.getParameter("address"));
            kdto.setAddress(mreq.getParameter("address"));
        }

        dto.setSeq(kdto.getSeq()+"");

        System.out.println(dto);

        if (kdto.getImage() != mreq.getParameter("image")) {

            MultipartFile file = mreq.getFile("image");
            String filename = file.getOriginalFilename();

            //String path = mreq.getRealPath("/static/image");
            String path = "C:\\class\\code\\springboot\\profile";

            System.out.println(path);
            System.out.println(dto);

            if (!file.isEmpty()) {
                String file1 = getFileName(path, filename);

                try {
                    file.transferTo(new File(path + "\\" + file1));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                dto.setImage(file1);
                ((KakaoDTO) session.getAttribute("user")).setImage(file1);

            }
        }

        int result = dao.gongbangEdit(dto);
        System.out.println("service:" + kdto);

        return result;
    }

    //예약자 정보
    @Override
    public List<MemberDTO> reserveMemberInfo(String seq) {
        return dao.reserveMemberInfo(seq);
    }
}
