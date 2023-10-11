package com.example.onlinemart.dao;

import org.apache.ibatis.jdbc.SQL;

import java.util.Map;

public class ProductDynaSqlProvider {

    public String findProductsByParams(Map<String, Object> params) {
        return new SQL() {
            {
                SELECT("p.id", "p.name", "p.price", "u.username", "p.picPath");
                FROM("product AS p");
                LEFT_OUTER_JOIN("user AS u ON p.sellerId = u.id");
                if (params.get("typeId") != null) {
                    WHERE("p.typeId = #{typeId}");
                }
                if (params.get("keyWord") != null) {
                    AND();
                    WHERE("p.name LIKE CONCAT('%', #{keyWord}, '%')");
                }
                if (params.get("priceMin") != null) {
                    AND();
                    WHERE("p.price >= #{priceMin}");
                }
                if (params.get("priceMax") != null) {
                    AND();
                    WHERE("p.price <= #{priceMax}");
                }
                if (params.get("pager") != null) {
                    LIMIT("#{pager.firstLimitParam}, #{pager.rowsPerPage}");
                }
            }
        }.toString();
    }

    public String findCountByParams(Map<String, Object> params) {
        return new SQL() {
            {
                SELECT("COUNT(*)");
                FROM("product AS p");
                LEFT_OUTER_JOIN("user AS u ON p.sellerId = u.id");
                if (params.get("typeId") != null) {
                    WHERE("p.typeId = #{typeId}");
                }
                if (params.get("keyWord") != null) {
                    AND();
                    WHERE("p.name LIKE CONCAT('%', #{keyWord}, '%')");
                }
                if (params.get("priceMin") != null) {
                    AND();
                    WHERE("p.price >= #{priceMin}");
                }
                if (params.get("priceMax") != null) {
                    AND();
                    WHERE("p.price <= #{priceMax}");
                }
            }
        }.toString();
    }
}
