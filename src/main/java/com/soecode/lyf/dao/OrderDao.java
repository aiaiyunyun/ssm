package com.soecode.lyf.dao;

import com.soecode.lyf.entity.SalesOrders;
import org.apache.ibatis.annotations.Param;

/**
 * Created by lsd on 2017-03-16.
 */
public interface OrderDao {

    void saveOrder(@Param("customer_name") String custmerName, @Param("salesman_name") String salesName, @Param("date_issuance") String date,
                          @Param("document_number")  String number, @Param("entry_personnel") String input_man,@Param("review_officer")  String reviewer,
                          @Param("item_type") String item_type,@Param("freight_amount")  String freight_amount,@Param("whether")  String whether,
                          @Param("creation_date")  String criate, @Param("order_all_amount") String totalAmount,@Param("del")String del,
                          @Param("bak") String description,@Param("apron_num") String apron_num, @Param("apron_price") String apron_price);
    void saveOrder1(@Param("document_number") String document_number);
}
