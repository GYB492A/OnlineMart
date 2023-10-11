package com.example.onlinemart.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import static com.example.onlinemart.util.Constant.*;

@Component
public class FailureHandler implements AuthenticationFailureHandler {
   @Autowired
    private ObjectMapper objectMapper;

    @Override
    public void onAuthenticationFailure(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                        AuthenticationException exception) throws IOException, ServletException {
        httpServletResponse.setContentType("application/json;charset=utf-8");
        Map<String, Object> map=new HashMap<>();
        map.put(STATUS_CODE,CODE_LOGIN_FAIL);
        map.put(MESSAGE,"用户登陆失败");
        String jsonStr=objectMapper.writeValueAsString(map);
        PrintWriter writer=httpServletResponse.getWriter();
        writer.write(jsonStr);
        writer.flush();
        writer.close();
    }
}
