package com.xuzimei.interceptor;

import java.io.Writer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.xuzimei.entity.User;

public class LoginInterceptor implements HandlerInterceptor {

    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
            Exception arg3) throws Exception {

    }

    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2,
            ModelAndView arg3) throws Exception {

    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
            Object object) throws Exception {
        System.out.println("preHandle");
        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            String result = "{\"success\":false,\"message\":\"用户未登录\"}";
            response.setCharacterEncoding("utf8");
            response.setContentType("application/json,charset=utf-8");
            Writer out = response.getWriter();
            out.write(result);
            return true;
        } else {
            return true;
        }
    }

}
