package com.soecode.lyf.entity;

/**
 * Created by lsd on 2017-03-14.
 */
public class SalesOrders {
    private int id;
    private String documentNumber;
    private String dateIssuance;
    private String salesmanName;
    private String customerName;
    private String orderAllAmount;
    private String whether;
    private String entryPersonnel;
    private String reviewOfficer;
    private String creationDate;
    private String receiveState;
    private String itemType;
    private String freightAmount;
    private String apronPrice;
    private String apronNum;
    private String bak;
    private String delStatus;

    public SalesOrders() {
    }

    public SalesOrders(int id, String documentNumber, String dateIssuance, String salesmanName, String customerName, String orderAllAmount, String whether, String entryPersonnel, String reviewOfficer, String creationDate, String receiveState, String itemType, String freightAmount, String apronPrice, String apronNum, String bak, String delStatus) {
        this.id = id;
        this.documentNumber = documentNumber;
        this.dateIssuance = dateIssuance;
        this.salesmanName = salesmanName;
        this.customerName = customerName;
        this.orderAllAmount = orderAllAmount;
        this.whether = whether;
        this.entryPersonnel = entryPersonnel;
        this.reviewOfficer = reviewOfficer;
        this.creationDate = creationDate;
        this.receiveState = receiveState;
        this.itemType = itemType;
        this.freightAmount = freightAmount;
        this.apronPrice = apronPrice;
        this.apronNum = apronNum;
        this.bak = bak;
        this.delStatus = delStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDocumentNumber() {
        return documentNumber;
    }

    public void setDocumentNumber(String documentNumber) {
        this.documentNumber = documentNumber;
    }

    public String getDateIssuance() {
        return dateIssuance;
    }

    public void setDateIssuance(String dateIssuance) {
        this.dateIssuance = dateIssuance;
    }

    public String getSalesmanName() {
        return salesmanName;
    }

    public void setSalesmanName(String salesmanName) {
        this.salesmanName = salesmanName;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getOrderAllAmount() {
        return orderAllAmount;
    }

    public void setOrderAllAmount(String orderAllAmount) {
        this.orderAllAmount = orderAllAmount;
    }

    public String getWhether() {
        return whether;
    }

    public void setWhether(String whether) {
        this.whether = whether;
    }

    public String getEntryPersonnel() {
        return entryPersonnel;
    }

    public void setEntryPersonnel(String entryPersonnel) {
        this.entryPersonnel = entryPersonnel;
    }

    public String getReviewOfficer() {
        return reviewOfficer;
    }

    public void setReviewOfficer(String reviewOfficer) {
        this.reviewOfficer = reviewOfficer;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    public String getReceiveState() {
        return receiveState;
    }

    public void setReceiveState(String receiveState) {
        this.receiveState = receiveState;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public String getFreightAmount() {
        return freightAmount;
    }

    public void setFreightAmount(String freightAmount) {
        this.freightAmount = freightAmount;
    }

    public String getApronPrice() {
        return apronPrice;
    }

    public void setApronPrice(String apronPrice) {
        this.apronPrice = apronPrice;
    }

    public String getApronNum() {
        return apronNum;
    }

    public void setApronNum(String apronNum) {
        this.apronNum = apronNum;
    }

    public String getBak() {
        return bak;
    }

    public void setBak(String bak) {
        this.bak = bak;
    }

    public String getDelStatus() {
        return delStatus;
    }

    public void setDelStatus(String delStatus) {
        this.delStatus = delStatus;
    }
}
