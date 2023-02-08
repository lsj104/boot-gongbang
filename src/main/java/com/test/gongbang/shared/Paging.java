package com.test.gongbang.sclass.service;

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
    private int totalPageCount;

    // SQL의 조건절에 사용되는 첫 RNUM
    private int startRow;

    // SQL의 조건절에 사용되는 마지막 RNUM
    private int endRow;

    //DB에서 가져온 리스트 결과를 담아줄 변수 (모든 자료형의 데이터를 받을 수 있게 와일드카드(List<?>) 사용)
    private List<?> resultList;

    // startRow, endRow 계산
    public void pagination(int nowPage, int pageSize, int blockSize) {
        // 현재 페이지가 1보다 작을 수 없게 제한
        this.nowPage = nowPage < 1 ? 1 : nowPage;
        this.pageSize = pageSize;
        this.startRow = ((nowPage-1) * pageSize);
        this.endRow = startRow + pageSize;
    }

    // 페이징 처리된 결과값을 담는 메서드
    public void paginationList(List<?> resultList, int totalCount) {
        this.resultList = resultList;
        this.totalCount = totalCount;
    }

}
