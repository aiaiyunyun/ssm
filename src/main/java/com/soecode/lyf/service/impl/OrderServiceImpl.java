package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.OrderDao;
import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by lsd on 2017-03-16.
 */
@Service
public class OrderServiceImpl implements OrderService {
    // 注入Service依赖
    @Autowired
    OrderDao orderDao;

    @Override
    public void saveOrder(String number,String date,  String salesName, String custmerName,
                          String totalAmount,String whether,String input_man,String reviewer,
                          String criate,String item_type,String freight_amount,
                          String apron_price, String apron_num,String description,String del) {
        orderDao.saveOrder(number,date,salesName,custmerName,totalAmount,whether,input_man,reviewer,
                criate,item_type,freight_amount,apron_price,apron_num,description,del);
    }

    @Override
    public SalesOrders selectIdByNumber(String number) {
        System.out.println(number);
        return orderDao.selectIdByNumber(number);
    }

    @Override
    public void saveProduct(String goods,String specificationModel,  String qty, String price,
                          String amount,String descrip,String criate,String item_type,String pin_ID) {
        System.out.println("1"+goods+specificationModel+qty+price+amount+descrip);
        orderDao.saveProduct(goods,specificationModel,qty,price,amount,descrip,criate,item_type,pin_ID);
    }

    @Override
    public List<SalesOrders> selectList(Integer firstResult,Integer maxResults) {
        return orderDao.selectList(firstResult,maxResults);
    }

    @Override
    public List<SalesOrders> getTotal() {
        return orderDao.getTotal();
    }
}
