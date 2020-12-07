package com.example.WebQuangChau.service;

import com.example.WebQuangChau.entity.ReasonChooseServiceEntity;
import com.example.WebQuangChau.repository.ReasonChooseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReasonChooseService {
    @Autowired
    private ReasonChooseRepository reasonChooseRepo;

    public ReasonChooseServiceEntity newReasonChoose(ReasonChooseServiceEntity newReason){
        ReasonChooseServiceEntity reasonChoose = new ReasonChooseServiceEntity();
        try{
            reasonChoose = reasonChooseRepo.save(newReason);
        }catch (Exception e){
            System.out.println(e);
        }
        return newReason;
    }

    public List<ReasonChooseServiceEntity> getAllReasonChooseByServiceID(int id){
        return reasonChooseRepo.findByService_Id(id);
    }
}
