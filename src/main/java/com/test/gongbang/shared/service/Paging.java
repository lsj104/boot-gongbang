package com.test.gongbang.shared.service;

import lombok.Data;

@Data
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

    // pageBar html생성문
    private String pageBar;

    public Paging(int nowPage, int pageSize, int blockSize, int totalCount) {
        // 현재 페이지가 1보다 작을 수 없게 제한
        this.nowPage = nowPage < 1 ? 1 : nowPage;
        this.pageSize = pageSize;
        this.blockSize = blockSize;
        this.startRow = ((nowPage-1) * pageSize) + 1;
        this.endRow = startRow + pageSize - 1;
        this.totalCount = totalCount;
        this.totalPage = (int)Math.ceil((double)totalCount/pageSize);// Math.ceil() : 올림
    }


    public void pageBarMaker (Paging paging, String url) {

        int n = 0;			//출력될 페이지 번호
        int loop = 0;		//루프 변수

        String pageBar = "";

        n = ((paging.getNowPage() -1)/paging.getBlockSize()) * paging.getBlockSize() + 1;
        loop = 1;

        pageBar += " <ul class='pagination'> ";

            if (n == 1) {
                pageBar += " <li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>«</span></a></li> ";
            } else {
                pageBar += String.format(" <li><a href='%s?page=%d' aria-label='Previous'><span aria-hidden='true'>«</span></a></li> ", url, n - 1);
            }

            while (!(loop > paging.getBlockSize() || n > paging.getTotalPage())) {

                if (paging.getNowPage() == paging.getBlockSize()) {
                    pageBar += String.format(" <li class='active'><a href='#'>%d <span class='sr-only'>(current)</span></a></li> ",n);
                } else {
                    pageBar += String.format(" <li><a href='%s?page=%d'>%d</a></li> ", url,  n, n);
                }

                loop++;
                n++;

            }

            if (n > paging.getTotalPage()) {
                pageBar += " <li class='disabled'><a href='#' aria-label='Next'><span aria-hidden='true'>»</span></a></li> ";
            } else {
                pageBar += String.format(" <li><a href='%s?page=%d' aria-label='Next'><span aria-hidden='true'>»</span></a></li> ", url,  n);
            }

        pageBar += " </ul>";

        this.pageBar = pageBar;

    }

    public void pageBarMaker (Paging paging, String searchType, String searchWord, String url) {

        System.out.println("totalCount" + paging.getTotalCount());
        System.out.println("now" + paging.getNowPage());
        System.out.println("pagingBlock" + paging.getBlockSize());
        System.out.println("pagingBlock" + paging.getBlockSize());

        int n = 0;			//출력될 페이지 번호
        int loop = 0;		//루프 변수

        String pageBar = "";

        n = ((paging.getNowPage() -1)/paging.getBlockSize()) * paging.getBlockSize() + 1;
        loop = 1;

        pageBar += " <ul class='pagination'> ";

        if (searchType == null || searchWord == null) {

            if (n == 1) {
                pageBar += " <li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>«</span></a></li> ";
            } else {
                pageBar += String.format(" <li><a href='%s?page=%d' aria-label='Previous'><span aria-hidden='true'>«</span></a></li> ", url, n - 1);
            }

            while (!(loop > paging.getBlockSize() || n > paging.getTotalPage())) {

                if (paging.getNowPage() == paging.getBlockSize()) {
                    pageBar += String.format(" <li class='active'><a href='#'>%d <span class='sr-only'>(current)</span></a></li> ",n);
                } else {
                    pageBar += String.format(" <li><a href='%s?page=%d'>%d</a></li> ", url,  n, n);
                }

                loop++;
                n++;

            }

            if (n > paging.getTotalPage()) {
                pageBar += String.format(" <li><a href='%s?page=%d' aria-label='Next'><span aria-hidden='true'>»</span></a></li> ", url, paging.getTotalPage());
            } else {
                pageBar += String.format(" <li><a href='%s?page=%d' aria-label='Next'><span aria-hidden='true'>»</span></a></li> ", url,  n);
            }

        } else{

            if (n == 1) {
                pageBar += " <li class='disabled'><a href='#' aria-label='Previous'><span aria-hidden='true'>«</span></a></li> ";
            } else {
                pageBar += String.format(" <li><a href='%s?searchType=%s&searchWord=%s&page=%d'aria-label='Previous'><span aria-hidden='true'>«</span></a></li> ", url,  searchType, searchWord, n - 1);
            }

            while (!(loop > paging.getBlockSize() || n > paging.getTotalPage())) {

                if (paging.getNowPage() == n) {
                    pageBar += String.format(" <li class='active'><a href='#'>%d <span class='sr-only'>(current)</span></a></li> ", n);
                } else {
                    pageBar += String.format(" <li><a href='%s?searchType=%s&searchWord=%s&page=%d'>%d</a></li> ", url, searchType, searchWord, n, n);
                }

                loop++;
                n++;

            }

            if (n > paging.getTotalPage()) {
                pageBar += String.format(" <li class='disabled'><a href='%s?searchType=%s&searchWord=%s&page=%d' aria-label='Next'><span aria-hidden='true'>»</span></a></li> ", url, searchType, searchWord, paging.getTotalPage());
            } else {
                pageBar += String.format(" <li><a href='%s?searchType=%s&searchWord=%s&page=%d' aria-label='Next'><span aria-hidden='true'>»</span></a></li> ", url, searchType, searchWord, n);
            }

        }

        pageBar += " </ul>";

        this.pageBar = pageBar;

    }

}
