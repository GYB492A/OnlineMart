package com.example.onlinemart.service;

import com.example.onlinemart.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    public Integer userRegister(User user);
    public  void userRegisterTx(User user);
}
