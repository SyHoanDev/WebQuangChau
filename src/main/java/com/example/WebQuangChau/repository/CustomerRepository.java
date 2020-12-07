package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.CustomerEntity;
import org.springframework.data.repository.CrudRepository;

public interface CustomerRepository extends CrudRepository<CustomerEntity,Integer> {
}
