package com.example.WebQuangChau.controller;

import com.example.WebQuangChau.entity.ServiceEntity;
import com.example.WebQuangChau.service.ServiceDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ServiceController {
    @Autowired
    private ServiceDetailsService serviceDetailsService;

    @GetMapping(value = "/getService/{id}")
    public String getService(@PathVariable("id") int id, Model model){
        ServiceEntity service = serviceDetailsService.getServiceById(id);
        model.addAttribute("service",service);
        List<ServiceEntity> listService = serviceDetailsService.getAllService();
        model.addAttribute("serviceList",listService);
        return "service-details";
    }
}
