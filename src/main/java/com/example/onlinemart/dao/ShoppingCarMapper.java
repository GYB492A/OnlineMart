package com.example.onlinemart.dao;

import com.example.onlinemart.entity.ProductDetail;
import org.apache.ibatis.annotations.*;

import java.util.List;
@Mapper
public interface ShoppingCarMapper {
    @Insert("INSERT INTO shoppingcar VALUES (NULL,#{buyerId},#{productId},#{amount})")
    public void insertShoppingCar(@Param("buyerId") Long buyerId,
                                  @Param("productId") Long productId,
                                  @Param("amount") Integer amount);
    @Select("SELECT s.id,s.amount,p.id AS pid,p.price,p.quantity,d.brandname,d.shelfLife," +
            "d.producer,p.picPath,u.username " +
            "FROM shoppingcar AS s LEFT JOIN product AS p " +
            "ON s.productId = p.id " +
            "LEFT JOIN productdetail AS d ON d.id = p.detailId " +
            "LEFT JOIN user AS u ON p.sellerID = u.id " +
            "WHERE s.buyerID = #{buyerId}")
    @Results({
            @Result(id = true,column = "id",property = "shoppingCarId"),
            @Result(column = "amount",property = "amount"),
            @Result(column = "pid",property = "productId"),
            @Result(column = "name",property = "productName"),
            @Result(column = "price",property = "price"),
            @Result(column = "quantity",property = "quantity"),
            @Result(column = "picPath",property = "picPath"),
            @Result(column = "brandname",property = "brandName"),
            @Result(column = "shelfLife",property = "shelfLife"),
            @Result(column = "producer",property = "producer"),
            @Result(column = "username",property = "sellerName")
    })
    public List<ProductDetail> findShoppingCarItemByBuyerId(Long buyerId);
}
