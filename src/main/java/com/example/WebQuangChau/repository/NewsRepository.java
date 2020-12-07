package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.NewsEntity;
import org.springframework.data.repository.CrudRepository;

public interface NewsRepository extends CrudRepository<NewsEntity,Integer> {
}
