package com.xumilk.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xumilk.entity.User;

@Controller
public class UserController {

    @RequestMapping("/join")
    public String join(User user, HttpSession session) {

        return "user/join";
    }

    @RequestMapping("/login")
    public String login(User user, HttpSession session) {
        return "user/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login_do(User user, HttpServletRequest request) {
        String userName = request.getParameter("userName");
        String userPasswd = request.getParameter("userPasswd");
        return "user/login";
    }

    @RequestMapping("/logout")
    public String logout(User user, HttpSession session) {

        return "user/logout";
    }

}
