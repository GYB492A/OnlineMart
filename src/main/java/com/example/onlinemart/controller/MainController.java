package com.example.onlinemart.controller;

import com.example.onlinemart.entity.*;
import com.example.onlinemart.service.OrderService;
import com.example.onlinemart.service.ProductService;
import com.example.onlinemart.service.ShoppingCarService;
import com.example.onlinemart.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.awt.*;
import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.example.onlinemart.util.Constant.IMG_DIRECTORY_PATH;

@Controller
@Validated
public class MainController {

    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private ShoppingCarService shoppingCarService;

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView();
        List<Product> clothes = productService.findHotSaleProduct(1L, 4);
        List<Product> bags = productService.findHotSaleProduct(2L, 4);
        List<Product> homeApply = productService.findHotSaleProduct(3L, 4);
        List<Product> furniture = productService.findHotSaleProduct(4L, 4);
        mv.addObject("clothes", clothes);
        mv.addObject("bags", bags);
        mv.addObject("homeApply", homeApply);
        mv.addObject("furniture", furniture);
        mv.setViewName("index");
        return mv;
    }

    @RequestMapping("/mytaobao")
    public String mytaobao() {
        return "mytaobao";
    }

    @RequestMapping("/productList")
    public ModelAndView productList(@NotNull @Min(1) Integer curPage,
                                    @NotNull @Min(1) Integer rowsPerPage,
                                    String keyWord,
                                    @Min(1) Long typeId,
                                    @Min(0) Integer priceMin,
                                    @Min(0) Integer priceMax) {
        Map<String, Object> params = new HashMap<>();
        ModelAndView mv = new ModelAndView();
        Pager pager = new Pager();
        pager.setCurPage(curPage);
        pager.setRowsPerPage(rowsPerPage);
        params.put("pager", pager);
        if (keyWord != null && !keyWord.equals("")) {
            params.put("keyWord", keyWord);
        }
        if (typeId != null) {
            params.put("typeId", typeId);
        }
        if (priceMin != null) {
            params.put("priceMin", priceMin);
        }
        if (priceMax != null) {
            params.put("priceMax", priceMax);
        }
        List<Product> products = productService.findProductsByParams(params);
        if (products != null) {
            Integer count = productService.findCountByParams(params);
            if (count >= 0) {
                Integer totalPage = (count + rowsPerPage - 1) / rowsPerPage;
                mv.addObject("curPage", curPage);
                mv.addObject("rowsPerPage", rowsPerPage);
                mv.addObject("keyWord", keyWord);
                mv.addObject("productList", products);
                mv.addObject("totalPage", totalPage);
                mv.addObject("priceMin", priceMin);
                mv.addObject("priceMax", priceMax);
                mv.addObject("typeId", typeId);
                mv.setViewName("productList");
                return mv;
            }
        } else {
            return null;
        }
        return null;
    }

    @RequestMapping("/productDetail")
    public ModelAndView productDetail(@NotNull Long productId) {
        ModelAndView mv = new ModelAndView();
        ProductDetail product = productService.findProductDetailById(productId);
        productService.findProductDetailById(productId);
        if (product == null) {
            return mv;
        } else {
            mv.addObject("product", product);
            mv.setViewName("productDetail");
            return mv;
        }
    }

    @RequestMapping("/orderConfirm")
    public ModelAndView orderConfirm(@NotNull ProductWrapper productWrapper,
                                     @NotNull Boolean isFromShoppingCar) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("items", productWrapper.getProducts());
        mv.addObject("isFromShoppingCar", isFromShoppingCar);
        mv.setViewName("orderConfirm");
        return mv;
    }

    @RequestMapping("/myOrder")
    public ModelAndView myOrder(Integer curPage, Integer rowsPerPage) {
        ModelAndView mv = new ModelAndView();
        MyUserDetail user = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Pager pager = new Pager();
        pager.setRowsPerPage(rowsPerPage);
        pager.setCurPage(curPage);
        List<OrderInfo> orderInfos = orderService.findOrderInfoByUserId(user.getId(), pager);
        if (orderInfos != null) {
            Integer count = orderService.findOrderInfoCountByUserId(user.getId());
            if (count >= 0) {
                Integer totalPage = (count + rowsPerPage - 1) / rowsPerPage;
                mv.addObject("curPage", curPage);
                mv.addObject("rowsPerPage", rowsPerPage);
                mv.addObject("totalPage", totalPage);
                mv.addObject("orders", orderInfos);
                mv.setViewName("myOrder");
            }

        }
        mv.setViewName("myOrder");
        return mv;
    }

    @RequestMapping("/myProduct")
    public ModelAndView myProduct(Integer curPage, Integer rowsPerPage) {
        ModelAndView mv = new ModelAndView();
        MyUserDetail user = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Pager pager = new Pager();
        pager.setCurPage(curPage);
        pager.setRowsPerPage(rowsPerPage);
        List<ProductDetail> products = productService.findProductDetailsBySellerIdAndPager(user.getId(), pager);
        if (products != null) {
            Integer count = productService.findProductCountBySellerId(user.getId());
            if (count >= 0) {
                Integer totalPage = (count + rowsPerPage - 1) / rowsPerPage;
                mv.addObject("curPage", curPage);
                mv.addObject("rowsPerPage", rowsPerPage);
                mv.addObject("totalPage", totalPage);
                mv.addObject("products", products);
                mv.setViewName("myProduct");
            }
        }
        mv.setViewName("myProduct");
        return mv;
    }

    @RequestMapping("/addProduct")
    public ModelAndView addProduct() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("addProduct");
        return mv;
    }

    //图片
    @RequestMapping(value = "/image/{name}", produces = {MediaType.IMAGE_JPEG_VALUE, MediaType.IMAGE_PNG_VALUE})
    public void getImage(@PathVariable("name") String name,
                         HttpServletResponse response) {
        String filePath = IMG_DIRECTORY_PATH + "/" + name;
        try {
            FileInputStream fileInputStream = new FileInputStream(filePath);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
            ServletOutputStream outputStream = response.getOutputStream();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);

            byte[] buf = new byte[1024];
            int len = -1;
            while ((len = bufferedInputStream.read(buf)) != -1) {
                bufferedOutputStream.write(buf, 0, len);
            }
            bufferedOutputStream.close();
            bufferedInputStream.close();
        } catch (FileNotFoundException e) {

            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("myShoppingCar")
    public ModelAndView myShoppingCar() {
        ModelAndView mv = new ModelAndView();
        MyUserDetail user = (MyUserDetail) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        List<ProductDetail> products = shoppingCarService.findShoppingCarItemsByBuyerId(user.getId());
        if (products != null) {
            mv.addObject("products", products);
        }
        mv.setViewName("myShoppingCar");
        return mv;
    }
}