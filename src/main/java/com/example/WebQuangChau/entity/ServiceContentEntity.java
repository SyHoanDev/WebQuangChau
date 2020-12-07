package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "Service_content")
public class ServiceContentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String content;
    @ManyToOne
    @JoinColumn(name = "serviceID")
    private ServiceEntity service;
    @OneToMany(mappedBy = "serviceContent",fetch = FetchType.LAZY)
    private List<ImageEntity> listImage;

    public ServiceContentEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public ServiceEntity getService() {
        return service;
    }

    public void setService(ServiceEntity service) {
        this.service = service;
    }

    public List<ImageEntity> getListImage() {
        return listImage;
    }

    public void setListImage(List<ImageEntity> listImage) {
        this.listImage = listImage;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
