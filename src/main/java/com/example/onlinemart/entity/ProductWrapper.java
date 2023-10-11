package com.example.onlinemart.entity;

import java.io.Serializable;
import java.util.List;

public class ProductWrapper implements Serializable {
    private List<ProductDetail> products;

    public List<ProductDetail> getProducts() {
        return products;
    }

    public void setProducts(List<ProductDetail> products) {
        this.products = products;
    }
}
