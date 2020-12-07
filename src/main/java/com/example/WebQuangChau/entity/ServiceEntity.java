package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "service")
public class ServiceEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private String description;
    @OneToMany(mappedBy = "service",fetch = FetchType.LAZY)
    private List<OrderEntity> orderList;
    @OneToMany(mappedBy = "service",fetch = FetchType.EAGER)
    private List<ServiceContentEntity> listServiceContent;
    @OneToMany(mappedBy = "service",fetch = FetchType.LAZY)
    private List<ReasonChooseServiceEntity> listReasonChooseService;
    private String avatar;

    public ServiceEntity() {
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

    public List<OrderEntity> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<OrderEntity> orderList) {
        this.orderList = orderList;
    }

    public List<ServiceContentEntity> getListServiceContent() {
        return listServiceContent;
    }

    public void setListServiceContent(List<ServiceContentEntity> listServiceContent) {
        this.listServiceContent = listServiceContent;
    }

    public List<ReasonChooseServiceEntity> getListReasonChooseService() {
        return listReasonChooseService;
    }

    public void setListReasonChooseService(List<ReasonChooseServiceEntity> listReasonChooseService) {
        this.listReasonChooseService = listReasonChooseService;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
