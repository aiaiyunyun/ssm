package com.soecode.lyf.service;

import com.soecode.lyf.entity.AllHead;

/**
 * Created by lsd on 2017-03-20.
 */

public interface BillService {
    void  saveCash(String payment_date,String document_number,String input_man,String brokerage,
                   String creation_date,String document_type,String sales_order);
    AllHead selectIdByNumber(String number);
    void  saveCashPrice(String payment_customer_name,String cash_amount,String customer_contact,String pin_ID);
    void  saveElectPrice(String payment_customer_name,String cash_amount,String customer_contact,String pin_ID);
    void  saveAcceptPrice(String payment_customer_name, String acceptance_amount, String date_acceptance,
                          String acceptance_number,String customer_contact,String pin_ID);
}
