package com.soecode.lyf.entity;

/**
 * Created by lsd on 2017-03-14.
 */
public class ScceptanceBill {
    private int id;
    private String document_number;
    private String payment_date;
    private String payment_customer_name;
    private String acceptance_number;
    private String date_acceptance;
    private String customer_contact;
    private String brokerage;
    private String input_man;
    private String creation_date;
    private String pin_ID;
    private String extended_space1;
    private String extended_space2;
    private String extended_space3;
    private String extended_space4;
    private String extended_space5;


    public ScceptanceBill(int id, String document_number, String payment_date, String payment_customer_name,
                          String acceptance_number, String date_acceptance, String customer_contact, String brokerage,
                          String input_man, String creation_date, String pin_ID) {
        this.id = id;
        this.document_number = document_number;
        this.payment_date = payment_date;
        this.payment_customer_name = payment_customer_name;
        this.acceptance_number = acceptance_number;
        this.date_acceptance = date_acceptance;
        this.customer_contact = customer_contact;
        this.brokerage = brokerage;
        this.input_man = input_man;
        this.creation_date = creation_date;
        this.pin_ID = pin_ID;
    }

    public ScceptanceBill() {
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

    public String getPayment_date() {
        return payment_date;
    }

    public void setPayment_date(String payment_date) {
        this.payment_date = payment_date;
    }

    public String getPayment_customer_name() {
        return payment_customer_name;
    }

    public void setPayment_customer_name(String payment_customer_name) {
        this.payment_customer_name = payment_customer_name;
    }

    public String getAcceptance_number() {
        return acceptance_number;
    }

    public void setAcceptance_number(String acceptance_number) {
        this.acceptance_number = acceptance_number;
    }

    public String getDate_acceptance() {
        return date_acceptance;
    }

    public void setDate_acceptance(String date_acceptance) {
        this.date_acceptance = date_acceptance;
    }

    public String getCustomer_contact() {
        return customer_contact;
    }

    public void setCustomer_contact(String customer_contact) {
        this.customer_contact = customer_contact;
    }

    public String getBrokerage() {
        return brokerage;
    }

    public void setBrokerage(String brokerage) {
        this.brokerage = brokerage;
    }

    public String getInput_man() {
        return input_man;
    }

    public void setInput_man(String input_man) {
        this.input_man = input_man;
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
}
