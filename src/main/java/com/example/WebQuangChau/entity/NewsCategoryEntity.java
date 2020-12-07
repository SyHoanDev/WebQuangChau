package com.example.WebQuangChau.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "news_category")
public class NewsCategoryEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String category;
    @OneToMany(mappedBy = "categoryNews",fetch = FetchType.LAZY)
    private List<NewsEntity> listNews;

    public NewsCategoryEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public List<NewsEntity> getListNews() {
        return listNews;
    }

    public void setListNews(List<NewsEntity> listNews) {
        this.listNews = listNews;
    }
}
