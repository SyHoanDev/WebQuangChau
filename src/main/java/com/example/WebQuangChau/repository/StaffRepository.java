package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.StaffEntity;
import org.springframework.data.repository.CrudRepository;

public interface StaffRepository extends CrudRepository<StaffEntity,Integer> {
    StaffEntity findByUsersUserName(String username);
}
