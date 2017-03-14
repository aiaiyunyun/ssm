package com.soecode.lyf.entity;

/**
 * Created by lsd on 2017-03-14.
 */
public class SalesOrders {
    private int id;
    private String document_number;
    private String date_issuance;
    private String salesman_name;
    private String customer_name;
    private String whether;
    private String entry_personnel;
    private String review_officer;
    private String creation_date;
    private String del_status;
    private String order_all_amount;
    private String receive_state;
    private String item_type;
    private String freight_amount;
    private String extended_space1;
    private String extended_space2;
    private String extended_space3;
    private String extended_space4;


    public SalesOrders(int id, String document_number, String date_issuance, String salesman_name, String customer_name,
                       String whether, String entry_personnel, String review_officer, String creation_date,
                       String del_status, String order_all_amount, String receive_state, String item_type,
                       String freight_amount) {
        this.id = id;
        this.document_number = document_number;
        this.date_issuance = date_issuance;
        this.salesman_name = salesman_name;
        this.customer_name = customer_name;
        this.whether = whether;
        this.entry_personnel = entry_personnel;
        this.review_officer = review_officer;
        this.creation_date = creation_date;
        this.del_status = del_status;
        this.order_all_amount = order_all_amount;
        this.receive_state = receive_state;
        this.item_type = item_type;
        this.freight_amount = freight_amount;
    }

    public SalesOrders() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDocument_number() {
        return document_number;
    }

    public void setDocument_number(String document_number) {
        this.document_number = document_number;
    }

    public String getDate_issuance() {
        return date_issuance;
    }

    public void setDate_issuance(String date_issuance) {
        this.date_issuance = date_issuance;
    }

    public String getSalesman_name() {
        return salesman_name;
    }

    public void setSalesman_name(String salesman_name) {
        this.salesman_name = salesman_name;
    }

    public String getCustomer_name() {
        return customer_name;
    }

    public void setCustomer_name(String customer_name) {
        this.customer_name = customer_name;
    }

    public String getWhether() {
        return whether;
    }

    public void setWhether(String whether) {
        this.whether = whether;
    }

    public String getEntry_personnel() {
        return entry_personnel;
    }

    public void setEntry_personnel(String entry_personnel) {
        this.entry_personnel = entry_personnel;
    }

    public String getReview_officer() {
        return review_officer;
    }

    public void setReview_officer(String review_officer) {
        this.review_officer = review_officer;
    }

    public String getCreation_date() {
        return creation_date;
    }

    public void setCreation_date(String creation_date) {
        this.creation_date = creation_date;
    }

    public String getDel_status() {
        return del_status;
    }

    public void setDel_status(String del_status) {
        this.del_status = del_status;
    }

    public String getOrder_all_amount() {
        return order_all_amount;
    }

    public void setOrder_all_amount(String order_all_amount) {
        this.order_all_amount = order_all_amount;
    }

    public String getReceive_state() {
        return receive_state;
    }

    public void setReceive_state(String receive_state) {
        this.receive_state = receive_state;
    }

    public String getItem_type() {
        return item_type;
    }

    public void setItem_type(String item_type) {
        this.item_type = item_type;
    }

    public String getFreight_amount() {
        return freight_amount;
    }

    public void setFreight_amount(String freight_amount) {
        this.freight_amount = freight_amount;
    }
}
