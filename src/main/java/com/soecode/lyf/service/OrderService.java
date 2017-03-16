package com.soecode.lyf.service;

import com.soecode.lyf.entity.SalesOrders;

/**
 * Created by lsd on 2017-03-16.
 */
public interface OrderService {
    void saveOrder(String custmerName,String salesName,String date,String number,String input_man,String reviewer,
                          String item_type,String freight_amount,String whether,String criate,String del,
                          String totalAmount,String description,String apron_num,String apron_price);
}
