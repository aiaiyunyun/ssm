package com.soecode.lyf.service.impl;

import com.soecode.lyf.dao.PriceDao;
import com.soecode.lyf.entity.AllHead;
import com.soecode.lyf.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by lsd on 2017-03-20.
 */
@Service
public class BillServiceImpl implements BillService {
    // 注入Service依赖
    @Autowired
    PriceDao priceDao;

    @Override
    public void saveCash(String payment_date,String document_number,String input_man,String brokerage,
                         String creation_date,String document_type,String sales_order) {
        priceDao.saveAllHead(payment_date,document_number,input_man,brokerage,creation_date,document_type,sales_order);
    }

    @Override
    public AllHead selectIdByNumber(String number) {
        return priceDao.selectIdByNumber(number);
    }

    @Override
    public void saveCashPrice(String payment_customer_name,String cash_amount,String customer_contact,String pin_ID) {
        priceDao.saveCashPrice(payment_customer_name,cash_amount,customer_contact,pin_ID);
    }
    @Override
    public void saveElectPrice(String payment_customer_name,String cash_amount,String customer_contact,String pin_ID) {
        priceDao.saveElectedPrice(payment_customer_name,cash_amount,customer_contact,pin_ID);
    }

    @Override
    public void saveAcceptPrice(String payment_customer_name, String acceptance_amount, String date_acceptance,
                                String acceptance_number,String customer_contact,String pin_ID) {
        priceDao.saveAcceptPrice(payment_customer_name,acceptance_amount,date_acceptance,acceptance_number,customer_contact,pin_ID);

    }
}
