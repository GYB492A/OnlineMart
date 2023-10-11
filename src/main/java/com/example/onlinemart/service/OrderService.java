package com.example.onlinemart.service;

import com.example.onlinemart.entity.OrderInfo;
import com.example.onlinemart.entity.ProductDetail;
import com.example.onlinemart.util.Pager;

import java.util.List;

public interface OrderService {
    public Integer createOrder(List<ProductDetail> items,Long buyerId,Boolean isFromShoppingCar);
    public void createOrderTX(List<ProductDetail> items,Long buyerId,Boolean isFromShoppingCar);

    public List<OrderInfo> findOrderInfoByUserId(Long userId, Pager pager);

    public Integer findOrderInfoCountByUserId(Long userId);
}
