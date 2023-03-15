package com.test.gongbang.admin.service;

import lombok.Data;

import java.sql.Date;

@Data
public class ChartDTO {

    //accountChart
    private String lv;
    private int activecnt;
    private int joincnt;

    //Chart용
    //reservationChart
    private String rdate;
    private int reservationcnt;

    //classChart
    private String duedate;
    private int createcnt;

    //reservationbycategoryChart
    private String category;
}
