package com.example.onlinemart.service;

import com.example.onlinemart.dao.ProductMapper;
import com.example.onlinemart.entity.*;
import com.example.onlinemart.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import static com.example.onlinemart.util.Constant.*;

@Service
public class ProductServiceImpl implements ProductService{
    @Resource
    private ProductMapper productMapper;

    @Autowired
    @Lazy
    private ProductService productService;
    @Override
    public List<Product> findHotSaleProduct(Long typeId, Integer count) {
        try {
            return productMapper.findProductsByTypeIdAndLimit(typeId, count);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }


//    商品列表
    @Override
    public List<Product> findProductsByParams(Map<String, Object> params) {
        try {
            return productMapper.findProductsByParams(params);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Integer findCountByParams(Map<String, Object> params) {
        try {
            return productMapper.findCountByParams(params);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }

    }

//    查询商品详情
    @Override
    public ProductDetail findProductDetailById(Long id) {
        try {
            return productMapper.findProductDetailById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<ProductDetail> findProductDetailsBySellerIdAndPager(Long sellerId, Pager pager) {
        try {
            return productMapper.findProductDetailsBySellerIdAndPager(sellerId, pager);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Integer findProductCountBySellerId(Long sellerId) {
        try {
            return productMapper.findProductCountBySellerId(sellerId);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
//添加商品
    @Override
    public Integer addProduct(ProductInsert product, ProductDetailInsert productDetail) {
        String fileName = UUID.randomUUID().toString();
        String filePath = IMG_DIRECTORY_PATH + "/" +fileName;
        File destFile = new File(filePath);
        if(!destFile.getParentFile().exists()){
            destFile.getParentFile().mkdirs();
        }
        try {
            product.getFile().transferTo(destFile);
        } catch (IOException e) {
            e.printStackTrace();
            return CODE_STORE_IMG_FAIL;
        }
        product.setPicPath(fileName);
        try {
            productService.addProductTX(product, productDetail);
            return CODE_OK;
        } catch (Exception e) {
            e.printStackTrace();
            return CODE_ADD_PRODUCT_FAIL;
        }
    }

    @Override
    @Transactional
    public void addProductTX(ProductInsert product, ProductDetailInsert productDetail) {
        MyUserDetail user = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        productMapper.insertProductDetail(productDetail);
        product.setDetailId(productDetail.getId());
        product.setSellerId(user.getId());
        productMapper.insertProduct(product);
    }
}
