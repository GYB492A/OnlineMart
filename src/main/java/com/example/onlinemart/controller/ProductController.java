package com.example.onlinemart.controller;

import com.example.onlinemart.entity.ProductDetailInsert;
import com.example.onlinemart.entity.ProductInsert;
import com.example.onlinemart.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

import static com.example.onlinemart.util.Constant.CODE_OK;
import static com.example.onlinemart.util.Constant.STATUS_CODE;

@RestController
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/add")
    public Map<String,Object>addProduct(ProductInsert product,
                                        ProductDetailInsert productDetail){
        Map<String,Object>map = new HashMap<>();
        Integer code = productService.addProduct(product, productDetail);
        if(code == CODE_OK){
            map.put(STATUS_CODE,CODE_OK);
        }else {
            map.put(STATUS_CODE,code);
        }
        return map;
    }
}

