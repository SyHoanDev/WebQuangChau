package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.OrderEntity;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository<OrderEntity,Integer> {
}
