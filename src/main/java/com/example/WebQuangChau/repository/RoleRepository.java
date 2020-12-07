package com.example.WebQuangChau.repository;

import com.example.WebQuangChau.entity.RoleEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RoleRepository extends CrudRepository<RoleEntity,Integer> {
    RoleEntity findById(int id);
    List<RoleEntity> findByUsers_UserName(String username);
    RoleEntity findByRole(String role);
}
