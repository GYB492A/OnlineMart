package com.example.onlinemart.controller;

import com.example.onlinemart.entity.MyUserDetail;
import com.example.onlinemart.service.ShoppingCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

import static com.example.onlinemart.util.Constant.CODE_OK;
import static com.example.onlinemart.util.Constant.STATUS_CODE;

@RestController
@RequestMapping("/shoppingCar")
public class ShoppingCarController {
    @Autowired
    private ShoppingCarService shoppingCarService;
    @RequestMapping("/add")
    public Map<String,Object>addShoppingCar(Long productId,Integer amount){
        Map<String,Object>map = new HashMap<>();
        MyUserDetail user = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Integer code = shoppingCarService.addShoppingCarItem(user.getId(),productId,amount);
                if(code == CODE_OK){
                    map.put(STATUS_CODE,CODE_OK);
                }else {
                    map.put(STATUS_CODE,code);
                }
                return map;
    }
}
