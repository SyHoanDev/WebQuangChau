package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.UsersEntity;
import org.springframework.data.repository.CrudRepository;

public interface UsersRepository extends CrudRepository<UsersEntity,Integer> {
    UsersEntity findByUserName(String username);
}
