package com.soecode.lyf.dao;

import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lsd on 2017-03-16.
 */
public interface OrderDao {

    void saveOrder(@Param("document_number")  String number, @Param("date_issuance") String date, @Param("salesman_name") String salesName,@Param("customer_name") String custmerName,
                   @Param("order_all_amount") String totalAmount,@Param("whether")String whether, @Param("entry_personnel") String input_man,@Param("review_officer")  String reviewer,
                   @Param("creation_date")  String criate,@Param("item_type") String item_type,@Param("freight_amount")  String freight_amount,
                   @Param("apron_price") String apron_price,@Param("apron_num") String apron_num,@Param("bak") String description,@Param("del")String del);

    void saveProduct(@Param("goods")String goods,@Param("specificationModel")String specificationModel,
                     @Param("qty")String qty,@Param("price")String price,@Param("amount")String amount,@Param("descrip")String descrip,
                     @Param("criate")String criate, @Param("item_type")String item_type, @Param("pin_ID")String pin_ID);

    SalesOrders selectIdByNumber(String documentNumber);

    List<SalesOrders> selectList(@Param("firstResult")Integer firstResult,@Param("maxResults")Integer maxResults);

    List<SalesOrders> getTotal();

    List<User> selectUser(@Param("name")String name,@Param("pwd")String pwd);
}
