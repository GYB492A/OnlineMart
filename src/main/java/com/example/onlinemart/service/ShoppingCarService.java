package com.example.onlinemart.service;

import com.example.onlinemart.entity.ProductDetail;

import java.util.List;

public interface ShoppingCarService {
    public Integer addShoppingCarItem(Long buyerId,
                                   Long productId,
                                   Integer amount);

    public List<ProductDetail> findShoppingCarItemsByBuyerId(Long buyerId);
}
