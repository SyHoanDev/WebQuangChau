package com.example.WebQuangChau.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "news_content")
public class NewsContentEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String title;
    private String description;
    private String content;

    @ManyToOne
    @JoinColumn(name = "newsID")
    private NewsEntity news;

    @OneToMany(mappedBy = "newsContent",fetch = FetchType.LAZY)
    private List<ImageEntity> listImage;

    public NewsContentEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public NewsEntity getNews() {
        return news;
    }

    public void setNews(NewsEntity news) {
        this.news = news;
    }

    public List<ImageEntity> getListImage() {
        return listImage;
    }

    public void setListImage(List<ImageEntity> listImage) {
        this.listImage = listImage;
    }
}
