package com.example.WebQuangChau.entity;

import javax.persistence.*;

@Entity
@Table(name = "image")
public class ImageEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String url;
    @ManyToOne
    @JoinColumn(name = "news_contentID")
    private NewsContentEntity newsContent;
    @ManyToOne
    @JoinColumn(name = "service_contentID")
    private ServiceContentEntity serviceContent;

    public ImageEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public NewsContentEntity getNewsContent() {
        return newsContent;
    }

    public void setNewsContent(NewsContentEntity newsContent) {
        this.newsContent = newsContent;
    }

    public ServiceContentEntity getServiceContent() {
        return serviceContent;
    }

    public void setServiceContent(ServiceContentEntity serviceContent) {
        this.serviceContent = serviceContent;
    }


}
