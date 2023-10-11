package com.example.onlinemart.service;

import com.example.onlinemart.dao.UserMapper;
import com.example.onlinemart.entity.MyUserDetail;
import com.example.onlinemart.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

import static com.example.onlinemart.util.Constant.CODE_OK;
import static com.example.onlinemart.util.Constant.CODE_REGISTER_USER_FAIL;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
    @Lazy
    @Autowired
    private UserService userService;

    @Override
    public Integer userRegister(User user) {
        String password = user.getPassword();
        String cryPassword = bCryptPasswordEncoder.encode(password);
        user.setPassword(cryPassword);
        try {
            userService.userRegisterTx(user);
            return CODE_OK;
        } catch (Exception e) {
            e.printStackTrace();
            return CODE_REGISTER_USER_FAIL;
        }
    }
    @Override
    @Transactional
    public void userRegisterTx(User user) {
        userMapper.insertUser(user);
        userMapper.insertUserRole(user.getId(), user.getRid());
    }
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        MyUserDetail user = userMapper.findUserByUsername(username);
        if (user == null) {
            throw new UsernameNotFoundException("该用户名不存在");
        } else {
            return user;
        }
    }
}
