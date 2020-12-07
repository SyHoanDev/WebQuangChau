package com.example.WebQuangChau.controller;

import com.example.WebQuangChau.entity.ServiceEntity;
import com.example.WebQuangChau.entity.StaffEntity;
import com.example.WebQuangChau.entity.UsersEntity;
import com.example.WebQuangChau.service.ServiceDetailsService;
import com.example.WebQuangChau.service.StaffService;
import com.example.WebQuangChau.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.List;

@Controller
@RequestMapping("/")
public class demoController {
    @Autowired
    private UserService userService;
    @Autowired
    private StaffService staffService;
    @Autowired
    private ServiceDetailsService serviceDetailsService;

    @RequestMapping(method = RequestMethod.GET)
    public String demo(Model model,HttpSession session){
        List<ServiceEntity> listService = serviceDetailsService.getAllService();
        model.addAttribute("serviceList",listService);
        return "index";
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String loginDemo(){
        return "login";
    }

    @RequestMapping("/loginFailed")
    public String loginError(Model model) {
        model.addAttribute("error", "true");
        return "login";
    }

    @RequestMapping(value = "/loginSuccess",method = RequestMethod.GET)
    public String login(Model model, Principal principal, HttpSession session){
        UsersEntity users = userService.getUser(principal.getName());
        StaffEntity staff = staffService.getStaffByUsername(users.getUserName());
        session.setAttribute("users",staff);
        return "redirect:/home-admin";
    }

    @GetMapping(value = "/home-admin")
    public String adminhome(Principal principal){
        return "admin/index";

    }
}
