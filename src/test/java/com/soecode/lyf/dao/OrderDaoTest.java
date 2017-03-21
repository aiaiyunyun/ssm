package com.soecode.lyf.dao;

import com.soecode.lyf.BaseTest;
import com.soecode.lyf.entity.AllHead;
import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by lsd on 2017-03-16.
 */
public class OrderDaoTest  extends BaseTest {
    @Autowired
    OrderDao orderDao;
    @Autowired
    PriceDao priceDao;
    @Test
    public void saveOrder() throws Exception {
        orderDao.saveOrder("1","1","1","1","1","1","1","1",
                "1","1","1","1","1","1","1");
    }

    @Test
    public void selectIdByNumber() throws Exception {
        SalesOrders salesOrders =  orderDao.selectIdByNumber("20170317115214");
        System.out.println(salesOrders.getId());
    }

    @Test
    public void selectList() throws Exception {
        List<SalesOrders> salesOrders =  orderDao.selectList(1,10,"李");
        System.out.println(salesOrders.size());
    }
    @Test
    public void getAll() throws Exception {
        List<SalesOrders> num =  orderDao.getTotal("李");
        System.out.println(num.size());
    }
    @Test
    public void select() throws Exception {
        List<User> b =  orderDao.selectUser("admin","1");
        String ab = b.get(0).getUsername();
        String abc = b.get(0).getPassword();
        int abd = b.size();
        System.out.println(ab+abc+abd);
    }
    @Test
    public void savePre() throws Exception {
        priceDao.saveCashPrice("1","1","1","1");
    }

    @Test
    public void allHead() throws Exception {
        priceDao.saveAllHead("1","1","1","1",
                "1","1","1");
    }
    @Test
    public void asasas() throws Exception {
        priceDao.saveAcceptPrice("1","1","1",
                "1","1","1");
    }

    @Test
    public void selectI() throws Exception {
        AllHead allHead =  priceDao.selectIdByNumber("20170320112031");
        System.out.println(allHead.getId());
    }

}