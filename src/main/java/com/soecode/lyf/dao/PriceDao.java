package com.soecode.lyf.dao;

import com.soecode.lyf.entity.AllHead;
import org.apache.ibatis.annotations.Param;

/**
 * Created by Administrator on 2017/3/20.
 */
public interface PriceDao {
    void saveCashPrice(@Param("payment_customer_name")String payment_customer_name,@Param("cash_amount")String cash_amount,
                       @Param("customer_contact")String customer_contact,@Param("pin_ID")String pin_ID);
    void saveElectedPrice(@Param("payment_customer_name")String payment_customer_name,@Param("cash_amount")String cash_amount,
                          @Param("customer_contact")String customer_contact,@Param("pin_ID")String pin_ID);
    void saveAcceptPrice(@Param("payment_customer_name")String payment_customer_name,@Param("acceptance_amount")String acceptance_amount,@Param("date_acceptance")String date_acceptance,
                         @Param("acceptance_number")String acceptance_number,@Param("customer_contact")String customer_contact,@Param("pin_ID")String pin_ID);

    void saveAllHead(@Param("payment_date")String payment_date,@Param("document_number")String document_number,@Param("input_man")String input_man,@Param("brokerage")String brokerage,
    @Param("creation_date")String creation_date,@Param("document_type")String document_type,@Param("sales_order")String sales_order);

    AllHead selectIdByNumber(String documentNumber);
}
