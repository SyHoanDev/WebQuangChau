package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.ServiceEntity;
import org.springframework.data.repository.CrudRepository;

public interface ServiceRepository extends CrudRepository<ServiceEntity,Integer> {

    ServiceEntity findById(int id);

}
