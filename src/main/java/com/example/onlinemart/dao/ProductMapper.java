package com.example.onlinemart.dao;

import com.example.onlinemart.entity.Product;
import com.example.onlinemart.entity.ProductDetail;
import com.example.onlinemart.entity.ProductDetailInsert;
import com.example.onlinemart.entity.ProductInsert;
import com.example.onlinemart.util.Pager;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;

import java.util.List;
import java.util.Map;
@Mapper
public interface ProductMapper {
    @Select("SELECT id, name, price, sellerId, picPath FROM product WHERE typeId=#{typeId} LIMIT 0, #{limit}")
    @Results(value = {
            @Result(id = true, column = "id", property = "productId"),
            @Result(column = "name",property = "name"),
            @Result(column = "price",property = "price"),
            @Result(column = "picPath",property = "picPath"),
            @Result(column = "sellerId",property = "sellerName",one = @One(
                    select = "com.example.onlinemart.dao.UserMapper.findUsernameById",
                    fetchType = FetchType.EAGER
            )),
    }, id = "productResults")
    public List<Product> findProductsByTypeIdAndLimit(@Param("typeId") Long typeId,
                                                      @Param("limit") Integer limit);


    @SelectProvider(type = ProductDynaSqlProvider.class,method = "findProductsByParams")
    @ResultMap("productResults")
    public List<Product> findProductsByParams(Map<String,Object> params);

    @SelectProvider(type = ProductDynaSqlProvider.class,method = "findCountByParams")
    public Integer findCountByParams(Map<String,Object>params);

    //查询商品详情
    @Select("SELECT p.id,p.name,p.price,p.quantity,p.picPath," +
            "u.username,d.brandname,d.shelfLife,d.producer," +
            "d.producerAddress,d.tel,d.description " +
            "FROM product AS p LEFT JOIN user AS u ON p.sellerId = u.id " +
            "LEFT JOIN productdetail AS d ON p.detailId = d.id " +
            "WHERE p.id = #{id}"
    )
    @Results({
            @Result(id =true,column = "id",property = "productId"),
            @Result(column = "name",property = "productName"),
            @Result(column = "price",property = "price"),
            @Result(column = "quantity",property = "quantity"),
            @Result(column = "picPath",property = "picPath"),
            @Result(column = "username",property = "sellerName"),
            @Result(column = "brandname",property = "brandName"),
            @Result(column = "shelfLife",property = "shelfLife"),
            @Result(column = "producer",property = "producer"),
            @Result(column = "producerAddress",property = "producerAddress"),
            @Result(column = "tel",property = "phoneNum"),
            @Result(column = "description",property = "description"),
    })
    public ProductDetail findProductDetailById(Long id);

    @Select("SELECT quantity FROM product WHERE id = #{productId} FOR UPDATE")
    public Integer findQuantityByProductId(Long productId);

    @Update("UPDATE product SET quantity = #{quantity} WHERE id = #{productId}")
    public void updateQuantityByProductId(@Param("productId") Long productId,
                                          @Param("quantity") Integer quantity);

    @Select("SELECT id,name,price,quantity,picPath " +
            "FROM product WHERE sellerId = #{sellerId} " +
            "LIMIT #{pager.firstLimitParam},#{pager.rowsPerPage}")
    @Results({
            @Result(id=true,column = "id",property = "productId"),
            @Result(column = "name",property = "productName"),
            @Result(column = "price",property = "price"),
            @Result(column = "quantity",property = "quantity"),
            @Result(column = "picPath",property = "picPath"),
    })
    public List<ProductDetail> findProductDetailsBySellerIdAndPager(@Param("sellerId")Long sellerId,
                                                                    @Param("pager")Pager pager);
    @Select("SELECT COUNT(*) FROM product WHERE sellerId = #{sellerId}")
    public Integer findProductCountBySellerId(Long sellerId);

//    添加商品
    @Insert("INSERT INTO productdetail VALUES " +
            "(NULL,#{fullName},#{brandName},#{shelfLife},#{producer}," +
            "#{producerAddress},#{tel},#{description})")
    @Options(useGeneratedKeys = true,keyColumn = "id",keyProperty = "id")
    public void insertProductDetail(ProductDetailInsert product);

    @Insert("INSERT INTO product VALUES (NULL,#{productName},#{price},#{quantity},#{detailId},#{typeId},#{sellerId}," +
            "#{picPath})")
    public void insertProduct(ProductInsert product);
}
