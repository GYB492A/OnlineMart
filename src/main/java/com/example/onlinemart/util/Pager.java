package com.example.onlinemart.util;

public class Pager {
    private Integer curPage;
    private Integer rowsPerPage;

    public Integer getCurPage() {
        return curPage;
    }

    public void setCurPage(Integer curPage) {
        this.curPage = curPage;
    }

    public Integer getRowsPerPage() {
        return rowsPerPage;
    }

    public void setRowsPerPage(Integer rowsPerPage) {
        this.rowsPerPage = rowsPerPage;
    }

    public Integer getFirstLimitParam() {
        return (curPage - 1) * rowsPerPage;
    }
}
