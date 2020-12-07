package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "reason_choose")
public class ReasonChooseServiceEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String reason;
    private String description;
    @ManyToOne
    @JoinColumn(name = "serviceID")
    private ServiceEntity service;

    public ReasonChooseServiceEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public ServiceEntity getService() {
        return service;
    }

    public void setService(ServiceEntity service) {
        this.service = service;
    }

}
