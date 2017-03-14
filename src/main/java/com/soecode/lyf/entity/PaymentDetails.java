package com.soecode.lyf.entity;

/**
 * Created by lsd on 2017-03-14.
 */
public class PaymentDetails {
    private int id;
    private String product_name;
    private String specification_model;
    private String product_quantity;
    private String unit_price;
    private String money;
    private String bak;
    private String creation_date;
    private String pin_ID;
    private String item_type;
    private String extended_space1;
    private String extended_space2;
    private String extended_space3;
    private String extended_space4;

    public PaymentDetails(int id, String product_name, String specification_model, String product_quantity,
                          String unit_price, String money, String bak, String creation_date, String pin_ID,
                          String item_type) {
        this.id = id;
        this.product_name = product_name;
        this.specification_model = specification_model;
        this.product_quantity = product_quantity;
        this.unit_price = unit_price;
        this.money = money;
        this.bak = bak;
        this.creation_date = creation_date;
        this.pin_ID = pin_ID;
        this.item_type = item_type;
    }

    public PaymentDetails() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getSpecification_model() {
        return specification_model;
    }

    public void setSpecification_model(String specification_model) {
        this.specification_model = specification_model;
    }

    public String getProduct_quantity() {
        return product_quantity;
    }

    public void setProduct_quantity(String product_quantity) {
        this.product_quantity = product_quantity;
    }

    public String getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(String unit_price) {
        this.unit_price = unit_price;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getBak() {
        return bak;
    }

    public void setBak(String bak) {
        this.bak = bak;
    }

    public String getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(String creation_date) {
        this.creation_date = creation_date;
    }

    public String getPin_ID() {
        return pin_ID;
    }

    public void setPin_ID(String pin_ID) {
        this.pin_ID = pin_ID;
    }

    public String getItem_type() {
        return item_type;
    }

    public void setItem_type(String item_type) {
        this.item_type = item_type;
    }
}
