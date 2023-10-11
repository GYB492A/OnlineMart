package com.example.onlinemart.handler;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
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
public class SuccessHandler implements AuthenticationSuccessHandler {
    @Autowired
    private ObjectMapper objectMapper;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
                                        Authentication authentication) throws IOException, ServletException {
        httpServletResponse.setContentType("application/json;charset=utf-8");
        Map<String, Object> map=new HashMap<>();
        map.put(STATUS_CODE,CODE_OK);
        map.put(MESSAGE,"用户登陆成功");
        String jsonStr=objectMapper.writeValueAsString(map);
        PrintWriter writer=httpServletResponse.getWriter();
        writer.write(jsonStr);
        writer.flush();
        writer.close();
    }
}
