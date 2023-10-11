package com.example.onlinemart.service;

import com.example.onlinemart.dao.OrderMapper;
import com.example.onlinemart.dao.ProductMapper;


import com.example.onlinemart.entity.MyOrder;
import com.example.onlinemart.entity.OrderInfo;
import com.example.onlinemart.entity.ProductDetail;
import com.example.onlinemart.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import javax.annotation.Resource;
import java.util.List;

import static com.example.onlinemart.util.Constant.*;

@Service
public class OrderServiceImpl implements OrderService{
    @Resource
    private OrderMapper orderMapper;
    @Resource
    private ProductMapper productMapper;
    @Autowired
    @Lazy
    private OrderService orderService;
    @Override
    public Integer createOrder(List<ProductDetail> items,Long buyerId,Boolean isFromShoppingCar) {

        try {
            orderService.createOrderTX(items, buyerId, isFromShoppingCar);
            return CODE_OK;
        } catch (Exception e) {
            e.printStackTrace();
            return CODE_CREATE_ORDER_FAIL;
        }
    }

    @Override
    @Transactional
    public void createOrderTX(List<ProductDetail> items,Long buyerId,Boolean isFromShoppingCar) {
        //创建订单
        MyOrder myOrder = new MyOrder();
        myOrder.setBuyerId(buyerId);
        myOrder.setStatus(ORDER_STATUS_PAYED);
        orderMapper.insertOrder(myOrder);
        for(ProductDetail item : items){
            Integer quantity = productMapper.findQuantityByProductId(item.getProductId());
            if(quantity < item.getAmount()){
                throw new RuntimeException();
            }else{
                quantity = quantity - item.getAmount();
                productMapper.updateQuantityByProductId(item.getProductId(),quantity);
                orderMapper.insertOrderItem(myOrder.getId(),item.getProductId(),item.getAmount(),ORDER_STATUS_PAYED);
                orderMapper.deleteShoppingCarItem(item.getShoppingCarId());
            }
        }

    }

    @Override
    public List<OrderInfo> findOrderInfoByUserId(Long userId, Pager pager) {
        try {
            return orderMapper.findorderInfosByUserId(userId,pager);
        } catch (Exception e) {
            e.printStackTrace();
            return  null;
        }
    }

    @Override
    public Integer findOrderInfoCountByUserId(Long userId) {
        try {
            return orderMapper.findOrderInfosCountByUserId(userId);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
