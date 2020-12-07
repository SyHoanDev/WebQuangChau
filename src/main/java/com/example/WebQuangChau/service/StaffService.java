package com.example.WebQuangChau.service;

import com.example.WebQuangChau.entity.StaffEntity;
import com.example.WebQuangChau.repository.StaffRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaffService {
    @Autowired
    private StaffRepository staffRepo;

    public StaffEntity getStaffByUsername(String username){
        return staffRepo.findByUsersUserName(username);
    }
}
