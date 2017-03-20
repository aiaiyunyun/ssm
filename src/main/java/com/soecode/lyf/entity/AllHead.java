package com.soecode.lyf.entity;

/**
 * Created by lsd on 2017-03-20.
 */
public class AllHead {
    private int id;
    private String payMentDate;
    private String documentNumber;
    private String inputMan;
    private String brokerage;
    private String creationDate;
    private String documentType;
    private String salesOrder;

    public AllHead() {
    }

    public AllHead(int id, String payMentDate, String documentNumber, String inputMan,
                   String brokerage, String creationDate, String documentType, String salesOrder) {
        this.id = id;
        this.payMentDate = payMentDate;
        this.documentNumber = documentNumber;
        this.inputMan = inputMan;
        this.brokerage = brokerage;
        this.creationDate = creationDate;
        this.documentType = documentType;
        this.salesOrder = salesOrder;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPayMentDate() {
        return payMentDate;
    }

    public void setPayMentDate(String payMentDate) {
        this.payMentDate = payMentDate;
    }

    public String getDocumentNumber() {
        return documentNumber;
    }

    public void setDocumentNumber(String documentNumber) {
        this.documentNumber = documentNumber;
    }

    public String getInputMan() {
        return inputMan;
    }

    public void setInputMan(String inputMan) {
        this.inputMan = inputMan;
    }

    public String getBrokerage() {
        return brokerage;
    }

    public void setBrokerage(String brokerage) {
        this.brokerage = brokerage;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getDocumentType() {
        return documentType;
    }

    public void setDocumentType(String documentType) {
        this.documentType = documentType;
    }

    public String getSalesOrder() {
        return salesOrder;
    }

    public void setSalesOrder(String salesOrder) {
        this.salesOrder = salesOrder;
    }
}
