package com.example.onlinemart.service;

import com.example.onlinemart.dao.ShoppingCarMapper;
import com.example.onlinemart.entity.ProductDetail;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.util.List;

import static com.example.onlinemart.util.Constant.CODE_INSERT_SHOPPINGCAR_FAIL;
import static com.example.onlinemart.util.Constant.CODE_OK;

@Service
public class ShoppingCarImpl implements ShoppingCarService{
    @Resource
    private ShoppingCarMapper shoppingCarMapper;
    @Override
    public Integer addShoppingCarItem(Long buyerId, Long productId, Integer amount) {
        try {

            shoppingCarMapper.insertShoppingCar(buyerId, productId, amount);
            return CODE_OK;
        } catch (Exception e) {
            e.printStackTrace();
            return CODE_INSERT_SHOPPINGCAR_FAIL;
        }
    }

    @Override
    public List<ProductDetail> findShoppingCarItemsByBuyerId(Long buyerId) {
        try {
            return shoppingCarMapper.findShoppingCarItemByBuyerId(buyerId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
