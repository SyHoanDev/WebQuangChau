package com.example.WebQuangChau.service;

import com.example.WebQuangChau.entity.ImageEntity;
import com.example.WebQuangChau.entity.ServiceContentEntity;
import com.example.WebQuangChau.repository.ImageRepository;
import com.example.WebQuangChau.repository.ServiceContentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceContentService {
    @Autowired
    private ServiceContentRepository serviceContentRepo;
    @Autowired
    private ImageRepository imageRepo;

    public ServiceContentEntity getServiceContentById(int id){
        ServiceContentEntity serviceContent = serviceContentRepo.findById(id);
        return serviceContent;
    }

    public ServiceContentEntity newContent(ServiceContentEntity serviceContent){
        ServiceContentEntity newContent = new ServiceContentEntity();
        try {
            newContent = serviceContentRepo.save(serviceContent);
            for(ImageEntity image : serviceContent.getListImage()){
                image.setServiceContent(newContent);
                imageRepo.save(image);
            }
        }catch (Exception e){
            System.out.println(e);
        }
        return newContent;
    }

    public List<ServiceContentEntity> getAllContentByServiceID(int id){
        return serviceContentRepo.findByService_Id(id);
    }
}
