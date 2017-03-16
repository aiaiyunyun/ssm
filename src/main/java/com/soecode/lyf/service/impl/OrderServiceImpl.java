package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.OrderDao;
import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by lsd on 2017-03-16.
 */
@Service
public class OrderServiceImpl implements OrderService {
    // 注入Service依赖
    @Autowired
    private OrderDao orderDao;

    @Override
    public void saveOrder(String custmerName,String salesName,String date,String number,String input_man,String reviewer,
                                 String item_type,String freight_amount,String whether,String criate,
                                 String totalAmount,String description,String apron_num,String apron_price,String del) {
        orderDao.saveOrder(custmerName,salesName,date,number,input_man,reviewer,item_type,freight_amount,whether,
                totalAmount,description,apron_num,apron_price,criate,del);
    }
}
