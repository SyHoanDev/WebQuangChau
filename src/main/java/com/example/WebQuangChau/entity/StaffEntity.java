package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "staff")
public class StaffEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String address;
    private String phoneNumber;
    private String staffPosition;
    @OneToOne
    @JoinColumn(name = "usersID")
    private UsersEntity users;
    @OneToMany(mappedBy = "staff",fetch = FetchType.LAZY)
    private List<NewsEntity> newsList;
    @OneToMany(mappedBy = "staff",fetch = FetchType.LAZY)
    private List<OrderEntity> orderList;

    public StaffEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStaffPosition() {
        return staffPosition;
    }

    public void setStaffPosition(String staffPosition) {
        this.staffPosition = staffPosition;
    }

    public UsersEntity getUsers() {
        return users;
    }

    public void setUsers(UsersEntity users) {
        this.users = users;
    }

    public List<NewsEntity> getNewsList() {
        return newsList;
    }

    public void setNewsList(List<NewsEntity> newsList) {
        this.newsList = newsList;
    }

    public List<OrderEntity> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<OrderEntity> orderList) {
        this.orderList = orderList;
    }
}
