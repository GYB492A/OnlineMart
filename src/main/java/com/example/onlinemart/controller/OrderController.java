package com.example.onlinemart.controller;

import com.example.onlinemart.entity.MyUserDetail;
import com.example.onlinemart.entity.ProductDetail;
import com.example.onlinemart.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.example.onlinemart.util.Constant.CODE_OK;
import static com.example.onlinemart.util.Constant.STATUS_CODE;

@RestController
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService orderService;
    @RequestMapping("/submit")
    public Map<String, Object> orderSubmit(@RequestBody List<ProductDetail> items,Boolean isFromShoppingCar){
        Map<String,Object>map = new HashMap<>();
        MyUserDetail user = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Integer code = orderService.createOrder(items, user.getId(),isFromShoppingCar);
        if(code == CODE_OK){
            map.put(STATUS_CODE,CODE_OK);
        }else {
            map.put(STATUS_CODE,code);
        }
        return map;
    }
}
