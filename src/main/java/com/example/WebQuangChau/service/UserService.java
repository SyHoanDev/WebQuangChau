package com.example.WebQuangChau.service;

import com.example.WebQuangChau.entity.UsersEntity;
import com.example.WebQuangChau.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UsersRepository usersRepo;

    public UsersEntity getUser(String username){
        return usersRepo.findByUserName(username);
    }
}
