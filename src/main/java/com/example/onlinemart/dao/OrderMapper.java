package com.example.onlinemart.dao;

import com.example.onlinemart.entity.MyOrder;
import com.example.onlinemart.entity.OrderInfo;
import com.example.onlinemart.entity.OrderItem;
import com.example.onlinemart.util.Pager;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;

@Mapper
public interface OrderMapper {
    @Insert("INSERT INTO myorder VALUES (NULL," +
            "#{buyerId},NOW(),#{status})")
    @Options(useGeneratedKeys = true,keyColumn="id",keyProperty="id")
//    创建订单
    public void insertOrder(MyOrder myOrder);
    @Insert("INSERT INTO orderitem VALUES (NULL,#{orderId},#{productId},#{amount},#{status})")
//    创建订单项
    public void insertOrderItem(@Param("orderId") Long orderId, @Param("productId") Long productId,
                                @Param("amount") Integer amount, @Param("status") Integer status);

    @Select("SELECT i.id,i.amount,i.status,p.name,p.price,p.picPath " +
            " FROM orderitem AS i LEFT JOIN product AS p " +
            "ON i.productId = p.id " +
            "WHERE i.orderId = #{orderId}")
    @Results({
            @Result(id = true,column = "id",property = "id"),
            @Result(column = "amount",property = "amount"),
            @Result(column = "status",property = "status"),
            @Result(column = "name",property = "productName"),
            @Result(column = "price",property = "price"),
            @Result(column = "picPath",property = "picPath"),

    })
//    查询订单项信息
    public List<OrderItem>findOrderItemsByOrderId(Long orderId);


    @Select("SELECT id,createTime FROM myorder " +
            "WHERE buyerId =#{userId} " +
            "LIMIT #{pager.firstLimitParam},#{pager.rowsPerPage}")
    @Results({
            @Result(id =true,column ="id",property = "id"),
            @Result(column = "createTime",property = "createTime"),
            @Result(column = "id",property = "orderItems",
                    many = @Many(select = "findOrderItemsByOrderId",
                    fetchType = FetchType.EAGER)),

    })
//    根据用户ID和分页信息查询订单信息
    public List<OrderInfo>findorderInfosByUserId(@Param("userId") Long userId,
                                                 @Param("pager") Pager pager);

    @Select("SELECT COUNT(*) FROM myorder " +
            "WHERE buyerId = #{userId}")
//    查询某个用户的订单总数
    public Integer findOrderInfosCountByUserId(Long userId);
//    根据购物车项ID删除购物车项
    @Delete("DELETE FROM shoppingcar WHERE id = #{shoppingCarId}")
    public void deleteShoppingCarItem(Long shoppingCarId);
}
