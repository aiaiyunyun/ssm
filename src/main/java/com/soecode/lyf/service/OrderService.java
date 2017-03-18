package com.soecode.lyf.service;

import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.entity.User;

import java.util.List;

/**
 * Created by lsd on 2017-03-16.
 */
public interface OrderService {
    //存储数据
    void saveOrder(String number,String date,  String salesName, String custmerName,
                   String totalAmount,String whether,String input_man,String reviewer,
                   String criate,String item_type,String freight_amount,
                   String apron_price, String apron_num,String description,String del);
    //根据编码查询id
    SalesOrders selectIdByNumber(String number);
    //存储买卖记录
    void saveProduct(String goods, String specificationModel, String qty, String price,
                     String amount, String descrip,String criate,String item_type,String pin_ID);

    List<SalesOrders> selectList(Integer firstResult,Integer maxResults);
    List<SalesOrders> getTotal();
    List<User> selectUser(String name,String pwd);
}
