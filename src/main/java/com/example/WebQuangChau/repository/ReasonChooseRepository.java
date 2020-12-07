package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.ReasonChooseServiceEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ReasonChooseRepository extends CrudRepository<ReasonChooseServiceEntity,Integer> {
    List<ReasonChooseServiceEntity> findByService_Id(int id);
}
