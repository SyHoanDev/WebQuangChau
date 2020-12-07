package com.example.WebQuangChau.service;

import com.example.WebQuangChau.entity.ImageEntity;
import com.example.WebQuangChau.entity.ReasonChooseServiceEntity;
import com.example.WebQuangChau.entity.ServiceContentEntity;
import com.example.WebQuangChau.entity.ServiceEntity;
import com.example.WebQuangChau.repository.ImageRepository;
import com.example.WebQuangChau.repository.ReasonChooseRepository;
import com.example.WebQuangChau.repository.ServiceContentRepository;
import com.example.WebQuangChau.repository.ServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceDetailsService {
    @Autowired
    private ServiceRepository serviceRepo;
    @Autowired
    private ServiceContentRepository serviceContentRepo;
    @Autowired
    private ImageRepository imageRepo;
    @Autowired
    private ReasonChooseRepository reasonChooseRepo;

    public List<ServiceEntity> getAllService(){
        List<ServiceEntity> listService = (List<ServiceEntity>) serviceRepo.findAll();
        return listService;
    }

    public ServiceEntity newService(ServiceEntity serviceEntity){
        ServiceEntity newService = null;
        newService = serviceRepo.save(serviceEntity);
        //lưu serviceContent
        for(ServiceContentEntity serviceContent : serviceEntity.getListServiceContent()){
            serviceContent.setService(newService);
            ServiceContentEntity newServiceContent = null;
            newServiceContent = serviceContentRepo.save(serviceContent);
            for(ImageEntity image : serviceContent.getListImage()){
                image.setServiceContent(newServiceContent);
                imageRepo.save(image);
            }
        }
        //lưu reasonChooseService
        for(ReasonChooseServiceEntity reasonChoose : serviceEntity.getListReasonChooseService()){
            reasonChoose.setService(newService);
            reasonChooseRepo.save(reasonChoose);
        }
        return newService;
    }

    public void updateService(ServiceEntity serviceEntity){
        serviceRepo.save(serviceEntity);
    }

    public void deleteService(ServiceEntity serviceEntity){
        List<ServiceContentEntity> listContent = serviceEntity.getListServiceContent();
        for (ServiceContentEntity serviceContentEntity: listContent) {
            List<ImageEntity> listImage = serviceContentEntity.getListImage();
            for(ImageEntity img: listImage){
                imageRepo.delete(img);
            }
            serviceContentRepo.delete(serviceContentEntity);
        }
        List<ReasonChooseServiceEntity> listReason = serviceEntity.getListReasonChooseService();
        for(ReasonChooseServiceEntity reason : listReason){
            reasonChooseRepo.delete(reason);
        }
        serviceRepo.delete(serviceEntity);
    }

    public ServiceEntity getServiceById(int id){
        ServiceEntity serviceEntity = serviceRepo.findById(id);
        return serviceEntity;
    }
}
