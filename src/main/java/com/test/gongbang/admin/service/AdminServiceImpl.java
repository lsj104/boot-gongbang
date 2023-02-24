package com.test.gongbang.admin.service;

import com.test.gongbang.admin.model.AdminDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired private AdminDAO dao;

    @Override
    public int loginOk(String id, HttpSession session) {

        List<AdminDTO> dto = dao.loginOk(id);
        int result = dto.size();

        if (result == 1) {

            AdminDTO adto = dto.get(0);
            
            //session.user에 admin dto 담기
            session.setAttribute("user",adto);

            System.out.println(session.getAttribute("user"));

        }

        return result;
    }
}
