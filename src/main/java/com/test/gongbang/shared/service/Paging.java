package com.test.gongbang.shared.service;

import java.util.List;

public class Paging {
    // 현재페이지
    private int nowPage;

    // 페이지당 출력할 페이지 수
    private int pageSize;

    // 하단 페이지 수, 한번에 보여지는 페이지 수
    private int blockSize;

    // 전체 데이터 개수
    private int totalCount;

    // 전체 페이지 개수
    private int totalPage;

    // SQL의 조건절에 사용되는 첫 RNUM
    private int startRow;

    // SQL의 조건절에 사용되는 마지막 RNUM
    private int endRow;

    private String pageBar;

    public void pagination(int nowPage, int pageSize, int blockSize, int totalCount, String url) {
        // 현재 페이지가 1보다 작을 수 없게 제한
        this.nowPage = nowPage < 1 ? 1 : nowPage;
        this.pageSize = pageSize;
        this.startRow = ((nowPage-1) * pageSize);
        this.endRow = startRow + pageSize;
        this.totalCount = totalCount;

        String pageBar = "";	//페이지 바 태그

        totalPage = (int)Math.ceil((double)totalCount/pageSize);	// Math.ceil() : 올림

        int n = 0;			//출력될 페이지 번호
        int loop = 0;		//루프 변수

        loop = 1;
        n = ((nowPage -1)/ blockSize) * blockSize + 1;

        if (n == 1 ) {
            pageBar += String.format("<a href='#!'style='cursor: not-allowed;'><i class=\"fa-solid fa-angles-left\"></i></a>");
        } else {
            pageBar += String.format("<a href='%s?page=%d'><i class=\"fa-solid fa-angles-left\"></i></a>", url, n-1);
        }


        while (!(loop > blockSize || n > totalPage)) {

            pageBar += "<td>";

            if(nowPage == n) {

                pageBar += String.format(" <a href='#!'>%d</a> ", n);
            } else {
                pageBar += String.format(" <a href='/%s?page=%d'>%d</a> ", url, n, n);
            }

            loop++;
            n++;

        }

        if (n > totalPage ) {
            pageBar += String.format("<a href='#!'style='cursor: not-allowed;'><i class=\"fa-solid fa-angles-right\"></i></a>");
        } else {
            pageBar += String.format("<a href='%s?page=%d'><i class=\"fa-solid fa-angles-right\"></i></a>", url, n);
        }


        this.pageBar = pageBar;
    }



}
