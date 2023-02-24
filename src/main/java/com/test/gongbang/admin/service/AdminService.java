package com.test.gongbang.admin.service;

import javax.servlet.http.HttpSession;

public interface AdminService {

    int loginOk(String id, HttpSession session);
}
