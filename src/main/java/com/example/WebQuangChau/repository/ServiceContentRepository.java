package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.ServiceContentEntity;
import org.springframework.data.jpa.repository.support.CrudMethodMetadata;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ServiceContentRepository extends CrudRepository<ServiceContentEntity,Integer> {
    ServiceContentEntity findById(int id);
    List<ServiceContentEntity> findByService_Id(int id);
}
