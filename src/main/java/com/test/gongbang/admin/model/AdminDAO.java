package com.test.gongbang.admin.model;

import com.test.gongbang.admin.service.AdminDTO;

import java.util.List;

public interface AdminDAO {
    List<AdminDTO> loginOk(String id);
}
