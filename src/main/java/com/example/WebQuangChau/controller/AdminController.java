package com.example.WebQuangChau.controller;

import com.example.WebQuangChau.entity.ImageEntity;
import com.example.WebQuangChau.entity.ReasonChooseServiceEntity;
import com.example.WebQuangChau.entity.ServiceContentEntity;
import com.example.WebQuangChau.entity.ServiceEntity;
import com.example.WebQuangChau.service.ReasonChooseService;
import com.example.WebQuangChau.service.ServiceContentService;
import com.example.WebQuangChau.service.ServiceDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/admin")
public class AdminController {
    @Autowired
    private ServiceDetailsService serviceDetailsService;
    @Autowired
    private ServiceContentService serviceContentService;
    @Autowired
    private ReasonChooseService reasonChooseService;

    @GetMapping(value = "/insertService")
    public String demoService(Model model){
        ServiceEntity service = new ServiceEntity();
        model.addAttribute("newService",service);
        return "admin/newService";
    }

    @PostMapping(value = "/newService")
    public String newContentService(ServiceEntity newService,Model model,@RequestParam("photo") MultipartFile photo,
        @RequestParam("titleContent") String titleContent,@RequestParam("serviceContent") String contentService,
                                    @RequestParam("imageContent") MultipartFile[] imageContent,
                                    @RequestParam("reasonChoose") String reasonChoose,
                                    @RequestParam("descriptionReason") String descriptionReason) throws IOException {

        Path path = Paths.get("uploads/");
        // setAvatar cho service
        InputStream inputStream = photo.getInputStream();
        Files.copy(inputStream, path.resolve(photo.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
        newService.setAvatar(photo.getOriginalFilename().toLowerCase());

        ///set giá trị và lưu serviceContent
        ServiceContentEntity serviceContent = new ServiceContentEntity();
        serviceContent.setTitle(titleContent);
        serviceContent.setContent(contentService);
        // chèn list ảnh minh họa và nội dung dịch vụ
        List<ImageEntity> listImage = new ArrayList<>();
        for (MultipartFile file : imageContent){
            ImageEntity imageEntity = new ImageEntity();
            //Path path = Paths.get("uploads/");
            try {
                InputStream inputStream1 = file.getInputStream();
                Files.copy(inputStream1, path.resolve(file.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
                imageEntity.setUrl(file.getOriginalFilename().toLowerCase());
                listImage.add(imageEntity);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        serviceContent.setListImage(listImage);
        /// tạo list ServiceContent và gán cho service
        List<ServiceContentEntity> serviceContentList = new ArrayList<>();
        serviceContentList.add(serviceContent);
        newService.setListServiceContent(serviceContentList);
        ///xly dữ liệu bảng reasonChoose
        ReasonChooseServiceEntity reasonChooseService = new ReasonChooseServiceEntity();
        reasonChooseService.setReason(reasonChoose);
        reasonChooseService.setDescription(descriptionReason);
        // tạo list reasonChooseService add reasonChoose vào và set cho service
        List<ReasonChooseServiceEntity> reasonChooseServiceList = new ArrayList<>();
        reasonChooseServiceList.add(reasonChooseService);
        newService.setListReasonChooseService(reasonChooseServiceList);
        ServiceEntity serviceEntity = serviceDetailsService.newService(newService);
        model.addAttribute("serviceDemo",serviceEntity);
        List<ServiceEntity> listService = serviceDetailsService.getAllService();
        model.addAttribute("serviceList",listService);
        return "admin/serviceDemo";
   }
    @GetMapping(value = "listService")
    public String listService(Model model){
        List<ServiceEntity> listService = serviceDetailsService.getAllService();
        model.addAttribute("listService",listService);
        model.addAttribute("totalRow",listService.size());
        return "admin/serviceList";
    }

    @GetMapping(value = "listContent/{id}")
    public String listContent(Model model,@PathVariable("id")int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        List<ServiceContentEntity> listContent = serviceEntity.getListServiceContent();
        model.addAttribute("listContent",listContent);
        model.addAttribute("service",serviceEntity);
        return "admin/listContentService";
    }

    @GetMapping(value = "listImage/{id}")
    public String listImgOfContent(@PathVariable("id")int id,Model model){
        ServiceContentEntity contentService = serviceContentService.getServiceContentById(id);
        List<ImageEntity> listImgContent = contentService.getListImage();
        if(listImgContent.size() == 0){
            model.addAttribute("message","NO IMAGE");
            model.addAttribute("content", contentService);
        }else {
            model.addAttribute("listImg", listImgContent);
            model.addAttribute("content", contentService);
        }
        return "admin/listImage";
    }

    @GetMapping(value = "listReason/{id}")
    public String listReasonChoose(Model model,@PathVariable("id")int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        List<ReasonChooseServiceEntity> listReason = serviceEntity.getListReasonChooseService();
        model.addAttribute("listReason",listReason);
        model.addAttribute("service",serviceEntity);
        return "admin/listReason";
    }

    @GetMapping(value = "updateService-page/{id}")
    public String updateServicePage(Model model,@PathVariable("id") int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        model.addAttribute("service",serviceEntity);
        return "admin/updateService";
    }
    @PostMapping(value = "updateService")
    public String updateService(ServiceEntity serviceEntity,Model model,@RequestParam("photo") MultipartFile photo){
        if(photo.isEmpty()){
            serviceDetailsService.updateService(serviceEntity);
        }else{
            Path path = Paths.get("uploads/");
            // setAvatar cho service
            InputStream inputStream = null;
            try {
                inputStream = photo.getInputStream();
                Files.copy(inputStream, path.resolve(photo.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
                serviceEntity.setAvatar(photo.getOriginalFilename().toLowerCase());
                serviceDetailsService.updateService(serviceEntity);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "redirect:/admin/listService";
    }

    @GetMapping(value = "deleteService/{id}")
    public String deleteService(@PathVariable("id") int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        serviceDetailsService.deleteService(serviceEntity);
        return "redirect:/admin/listService";
    }

    @GetMapping(value = "previewService/{id}")
    public String previewService(Model model,@PathVariable("id") int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        model.addAttribute("serviceDemo",serviceEntity);
        List<ServiceEntity> listService = serviceDetailsService.getAllService();
        model.addAttribute("serviceList",listService);
        return "admin/serviceDemo";
    }

    @GetMapping(value = "insertContent/{id}")
    public String insertContent(Model model,@PathVariable("id")int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        model.addAttribute("service",serviceEntity);
        ServiceContentEntity newContent = new ServiceContentEntity();
        newContent.setService(serviceEntity);
        model.addAttribute("newContent",newContent);
        return "admin/newContentService";
    }

    @PostMapping(value = "newContentService")
    public String newContent(ServiceContentEntity newContent,@RequestParam("photo") MultipartFile[] imageContent, Model model){
        // chèn list ảnh minh họa và nội dung dịch vụ
        List<ImageEntity> listImage = new ArrayList<>();
        for (MultipartFile file : imageContent){
            ImageEntity imageEntity = new ImageEntity();
            Path path = Paths.get("uploads/");
            try {
                InputStream inputStream1 = file.getInputStream();
                Files.copy(inputStream1, path.resolve(file.getOriginalFilename()), StandardCopyOption.REPLACE_EXISTING);
                imageEntity.setUrl(file.getOriginalFilename().toLowerCase());
                listImage.add(imageEntity);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        newContent.setListImage(listImage);
        //add service
        ServiceContentEntity serviceContentEntity = serviceContentService.newContent(newContent);
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(serviceContentEntity.getService().getId());
        List<ServiceContentEntity> listContent = serviceContentService.getAllContentByServiceID(serviceContentEntity.getService().getId());
        model.addAttribute("listContent",listContent);
        model.addAttribute("service",serviceContentEntity.getService());
        //String url = "admin/listContentService";
        String url = "redirect:/admin/listContent/" + serviceEntity.getId();
        return url;
    }

    @GetMapping(value = "insertReason/{id}")
    public String insertReason(Model model,@PathVariable("id") int id){
        ServiceEntity serviceEntity = serviceDetailsService.getServiceById(id);
        model.addAttribute("service",serviceEntity);
        ReasonChooseServiceEntity newReason = new ReasonChooseServiceEntity();
        newReason.setService(serviceEntity);
        model.addAttribute("newReason",newReason);
        return "admin/newReasonChooseService";
    }

    @PostMapping(value = "newReasonChoose")
    public String newReasonChoose(ReasonChooseServiceEntity newReason,Model model){
        ReasonChooseServiceEntity reasonChoose = reasonChooseService.newReasonChoose(newReason);
        ServiceEntity service = reasonChoose.getService();
        List<ReasonChooseServiceEntity> listReason = reasonChooseService.getAllReasonChooseByServiceID(service.getId());
        model.addAttribute("listReason",listReason);
        model.addAttribute("service",reasonChoose.getService());
        String url = "redirect:/admin/listReason/" + service.getId();
        return url;
    }
}
