package com.example.onlinemart.controller;

import com.example.onlinemart.entity.User;
import com.example.onlinemart.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

import static com.example.onlinemart.util.Constant.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/register")
    public Map<String,Object> userRegister(@Validated User user, BindingResult bindingResult){
        Map<String,Object> map=new HashMap<>();
        if (bindingResult.hasErrors()){
            map.put(STATUS_CODE,CODE_PARAMS_ERROR);
            map.put(MESSAGE,"参数错误");
            return map;
        }
        Integer code=userService.userRegister(user);
        if (code == CODE_OK){
            map.put(STATUS_CODE,CODE_OK);
            map.put(MESSAGE,"用户注册成功");
        }else{
            map.put(STATUS_CODE,CODE_REGISTER_USER_FAIL);
            map.put(MESSAGE,"用户注册失败");
        }
        return map;
    }
}
