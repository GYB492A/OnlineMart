package com.example.onlinemart.service;

import com.example.onlinemart.entity.Product;
import com.example.onlinemart.entity.ProductDetail;
import com.example.onlinemart.entity.ProductDetailInsert;
import com.example.onlinemart.entity.ProductInsert;
import com.example.onlinemart.util.Pager;

import java.util.List;
import java.util.Map;

public interface ProductService {
    public List<Product> findHotSaleProduct(Long typeId,Integer count);

    public List<Product> findProductsByParams(Map<String,Object> params);

    public Integer findCountByParams(Map<String,Object>params);

    public ProductDetail findProductDetailById(Long id);

    public List<ProductDetail> findProductDetailsBySellerIdAndPager(Long sellerId, Pager pager);

    public Integer findProductCountBySellerId(Long sellerId);

    public Integer addProduct(ProductInsert product,
                              ProductDetailInsert productDetail);
    public void addProductTX(ProductInsert product,
                                ProductDetailInsert productDetail);
}
