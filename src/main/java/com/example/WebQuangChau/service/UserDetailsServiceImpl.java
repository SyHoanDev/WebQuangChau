/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.WebQuangChau.service;

import com.example.WebQuangChau.entity.RoleEntity;
import com.example.WebQuangChau.entity.UsersEntity;
import com.example.WebQuangChau.repository.RoleRepository;
import com.example.WebQuangChau.repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ldanh
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UsersRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
        UsersEntity users = userRepository.findByUserName(userName);
        if (users == null) {
            System.out.println("Tài khoản không tồn tại! " + userName);
            throw new UsernameNotFoundException(userName);
        }
        List<RoleEntity> roleNames = roleRepository.findByUsers_UserName(userName);
        List<GrantedAuthority> grantList = new ArrayList<GrantedAuthority>();
        if (!CollectionUtils.isEmpty(roleNames)) {
            for (RoleEntity role : roleNames) {
                GrantedAuthority authority = new SimpleGrantedAuthority(role.getRole());
                grantList.add(authority);
            }
        }

        return (UserDetails) new User(users.getUserName(), users.getPassword(), grantList);
    }

}
