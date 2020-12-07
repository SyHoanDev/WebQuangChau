package com.example.WebQuangChau.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "Orders")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String billNumber;
    private String customerSend;
    private String addressSend;
    private String phoneNumberSend;
    private String customerReceive;
    private String addressReceive;
    private String phoneNumberReceive;
    private Double weight;
    private int quantity;
    private Double convertWeight;
    private Double postage;
    private Double codAmount;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime dateSend;
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
    private LocalDateTime dateReceive;
    @ManyToOne
    @JoinColumn(name = "serviceID")
    private ServiceEntity service;
    @ManyToOne
    @JoinColumn(name = "staffID")
    private StaffEntity staff;
    @ManyToOne
    @JoinColumn(name = "customerID")
    private CustomerEntity customer;

    public OrderEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBillNumber() {
        return billNumber;
    }

    public void setBillNumber(String billNumber) {
        this.billNumber = billNumber;
    }

    public String getCustomerSend() {
        return customerSend;
    }

    public void setCustomerSend(String customerSend) {
        this.customerSend = customerSend;
    }

    public String getAddressSend() {
        return addressSend;
    }

    public void setAddressSend(String addressSend) {
        this.addressSend = addressSend;
    }

    public String getPhoneNumberSend() {
        return phoneNumberSend;
    }

    public void setPhoneNumberSend(String phoneNumberSend) {
        this.phoneNumberSend = phoneNumberSend;
    }

    public String getCustomerReceive() {
        return customerReceive;
    }

    public void setCustomerReceive(String customerReceive) {
        this.customerReceive = customerReceive;
    }

    public String getAddressReceive() {
        return addressReceive;
    }

    public void setAddressReceive(String addressReceive) {
        this.addressReceive = addressReceive;
    }

    public String getPhoneNumberReceive() {
        return phoneNumberReceive;
    }

    public void setPhoneNumberReceive(String phoneNumberReceive) {
        this.phoneNumberReceive = phoneNumberReceive;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Double getConvertWeight() {
        return convertWeight;
    }

    public void setConvertWeight(Double convertWeight) {
        this.convertWeight = convertWeight;
    }

    public Double getPostage() {
        return postage;
    }

    public void setPostage(Double postage) {
        this.postage = postage;
    }

    public Double getCodAmount() {
        return codAmount;
    }

    public void setCodAmount(Double codAmount) {
        this.codAmount = codAmount;
    }

    public LocalDateTime getDateSend() {
        return dateSend;
    }

    public void setDateSend(LocalDateTime dateSend) {
        this.dateSend = dateSend;
    }

    public LocalDateTime getDateReceive() {
        return dateReceive;
    }

    public void setDateReceive(LocalDateTime dateReceive) {
        this.dateReceive = dateReceive;
    }

    public ServiceEntity getService() {
        return service;
    }

    public void setService(ServiceEntity service) {
        this.service = service;
    }

    public StaffEntity getStaff() {
        return staff;
    }

    public void setStaff(StaffEntity staff) {
        this.staff = staff;
    }

    public CustomerEntity getCustomer() {
        return customer;
    }

    public void setCustomer(CustomerEntity customer) {
        this.customer = customer;
    }
}
